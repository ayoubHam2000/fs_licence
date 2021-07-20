set serveroutput on


-- Supplied packages : UTL_FILE

/*
read and write OS files
EXCEPTION NAME 
    * INVALID_PATH
    * INVALID_MODE
    * INVALIDE_FILEHANDLE => file andle invalide
    * INVALIDE_OPERATION => file could not be opened or operated on as requested
    * READ_ERROR
    * WRITE_ERROR
    * INTERNAL_ERROR

FUNCTION FOPEN (p_location IN VARCHAR2,
                p_filename IN VARCHAR2,
                p_open_mode IN VARCHAR2)
RETURN UTL_FILE.FILE_TYPE;

FUNCTION IS_OPEN(p_file IN FILE_TYPE) RETURN BOOLEAN;

*/

-- E:\Documants\mozilla dowload\S6\4-database\plsqlcodes

-- select * from all_directories; to display all directories

-- you must use an user as administrator to get privileges
-- xe as sysdba

--create directory mydir as 'E:\Documants\mozilla dowload\S6\4-database\plsqlcodes\test';



