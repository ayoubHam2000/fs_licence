/*

you call procedure by relacing the body by

*/


1    CREATE [OR REPLACE] TRIGGER trigger name
2    event1 [OR evnet2 OR event3]
4    ON TABLE_NAME
5    [REFERENCING OLD AS OLD | NEW AS NEW]
6    [FOR EACH ROW]
7    [WHEN condition]
8    CALL procedure_name --no semicolon needed
