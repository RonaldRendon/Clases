-- Stored procedure
BEGIN
  DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END;





DECLARE 

var1 number := 1;
start_time number :=0;
end_time number := 0;

BEGIN
 start_time := DBMS_UTILITY.get_time;
 dbms_output.put_line('GLOBAL VARIABLE VAR1: '||var1);
 DECLARE
 
 -- LOCAL VARIABLE
 var1 number := 15;
 
 BEGIN
   dbms_output.put_line('LOCAL VARIABLE VAR1:' || var1);
   END ;
   end_time := DBMS_UTILITY.get_time;
   dbms_output.put_line('TIME ELAPSED: ');
   dbms_output.put_line(end_time - start_time || ' milliseconds');
   END;
   
   
 --Functions
 
 CREATE FUNCTION fundMin (x in number, y in number)
 RETURN number IS
  z number :=0;
  BEGIN
   IF x > y THEN
   z := y;
  ELSE
   z :=x;
   END IF;
   RETURN z;
   
   END ;
   
   BEGIN
   dbms_output.put_line ('Min 20 - 40: ' || fundMin(20,40));
   END;
   
   -- Llamar la funcion con la tabla dual
   
   SELECT fundMin(50,10) AS RESUL FROM DUAL;
   
   