CREATE OR REPLACE FUNCTION GLISS.sell_item (
   iitem_name         VARCHAR2,
   iitem_size         VARCHAR2,
   oprice       OUT   NUMBER,
   onumleft     OUT   NUMBER
)
   RETURN NUMBER
IS
   tmpid   NUMBER;
BEGIN
--test
   oprice := 0;

   SELECT item_id, price, inventory - 1
     INTO tmpid, oprice, onumleft
     FROM tkd_gear
    WHERE UPPER (item_name) = UPPER (iitem_name)
      AND UPPER (item_size) = UPPER (iitem_size)
      AND inventory >= 1;

   IF onumleft = 0
   THEN
      DELETE FROM tkd_gear
            WHERE item_id = tmpid;
   ELSE
      UPDATE tkd_gear
         SET inventory = onumleft
       WHERE item_id = tmpid;
   END IF;

   COMMIT;
   RETURN 1;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      RETURN 0;
   WHEN TOO_MANY_ROWS
   THEN
      RAISE_APPLICATION_ERROR (-20000, 'Non-unique item and size found');
      RETURN -1;
   WHEN OTHERS
   THEN
      RAISE_APPLICATION_ERROR (-20000, SQLERRM);
      RETURN -2;
END sell_item;
/
