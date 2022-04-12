SET @number_of_lines:=0; 
SELECT REPEAT('* ', @number_of_lines:= @number_of_lines + 1) 
FROM INFORMATION_SCHEMA.TABLES
WHERE @number_of_lines < 20
