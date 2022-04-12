SET @number_of_lines:=21; 
SELECT REPEAT('* ', @number_of_lines:= @number_of_lines - 1) 
FROM INFORMATION_SCHEMA.TABLES;
