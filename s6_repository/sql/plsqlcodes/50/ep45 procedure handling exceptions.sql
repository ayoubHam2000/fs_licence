set serveroutput on
set autoprint off

-- if the exception section does not found in the procedure body the pl/sql end the procedure
-- and start again searsh on the exception section positioned at the anamous block
-- if it does not found any exception to handle the error it will close the subprogram

-- it is perfered to do commit after all the insert