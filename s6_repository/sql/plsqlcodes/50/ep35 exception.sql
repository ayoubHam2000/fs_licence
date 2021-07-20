set serveroutput on
set autoprint off


--exception

--exception types
/*
predefined oracle server error : 20
non-predefined oracle server error
user-defined error
image : ep35-exeptions types.png

-Only one handler is processed before leaving the block

-Exception
    when exception1 [OR exeption2 ...] then
        statement1;
        statement2;
        ...
    .
    .
    [WHEN OTHERS THEN]
        statement1;
        statement2;
        ...

-Sample predefined exceptions:
NO_DATA_FOUND
TOO_MANY_ROWS
INVALID_CURSOR
ZERO_DIVIDE
DUP_VAL_ON_INDEX : two value of pramiry key

1.ACCESS_INTO_NULL -Program attempted to assign values to the attributes of an uninitialized object.

2.CASE_NOT_FOUND -None of the choices in the WHEN clauses of a CASE statement were selected and there is no ELSE clause.

3.COLLECTION_IS_NULL -Program attempted to apply collection methods other than EXISTS to an uninitialized nested table or varray, or program attempted to assign values to the elements of an uninitialized nested table or varray.

4.CURSOR_ALREADY_OPENED -Program attempted to open an already opened cursor.

5.DUP_VAL_ON_INDEX -Program attempted to insert duplicate values in a column that is constrained by a unique index.

6.INVALID_CURSOR - There is an illegal cursor operation.

7.INVALID_NUMBER - Conversion of character string to number failed.

8.NO_DATA_FOUND - Single row SELECT returned no rows or your program referenced a deleted element in a nested table or an uninitialized element in an associative array (index-by table).

9.PROGRAM_ERROR - PL/SQL has an internal problem.

10.ROWTYPE_MISMATCH - Host cursor variable and PL/SQL cursor variable involved in an assignment statement have incompatible return types.

11.STORAGE_ERROR - PL/SQL ran out of memory or memory was corrupted.

12.SUBSCRIPT_BEYOND_COUNT - A program referenced a nested table or varray using an index number larger than the number of elements in the collection.

13.SUBSCRIPT_OUTSIDE_LIMIT - A program referenced a nested table or varray element using an index number that is outside the legal range (for example, -1).

14.SYS_INVALID_ROWID - The conversion of a character string into a universal rowid failed because the character string does not represent a ROWID value.

15.TOO_MANY_ROWS - Single row SELECT returned multiple rows.

16.VALUE_ERROR - An arithmetic, conversion, truncation, or size constraint error occurred.

17.ZERO_DIVIDE - A program attempted to divide a number by zero.

18.TIMEOUT_ON_RESOURCE
19.LOGIN_DENIED
20.NOT_LOGGED_ON


*/