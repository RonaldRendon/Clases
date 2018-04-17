-- Store procedure
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