set serveroutput on
set autoprint off

-- NOCOPY
/*

* Allows the PL/SQL compiler to pass OUT and IN OUT parameters by reference rather than
by value
* enhances performance by reducting overhead(copy the value in a buffer 
in work on to dependently, and when success put the value on the original reference)
when passing parameters
* can not be trasted in case when no exception handling because the value change 
immediately after the execution of an instrunction 
ANY incomplete modifications are not rolled back

* We use NOCOPY in complex data types (LOBs, XMLTYPEs, COLLECTIONS ETC).

* The remote procedure call (RPC)(call from dara base to an other database) protocol enables you to pass parameters only by
value 
------------------------------------------------------
WHEN DOES THE PL/SQL compiler ignore the nocopy hint?

The NOCOPY hint can help improve performance of subprograms by avoiding the copying of values of 
IN OUT arguments, but there are a number of circumstances under which the compiler will ignore 
the NOCOPY hint.

The NOCOPY compiler hint may be useful for improving performance of PL/SQL subprogram calls that pass 
"large" structures (such as collections with many elements or records with many fields) as IN OUT or OUT 
arguments. These types of arguments (without NOCOPY) are passed by value, which means that the PL/SQL
 runtime engine will make a copy of the contents of the argument twice. NOCOPY asks the compiler to avoid 
 the copying by passing by reference, which means that any changes made to the argument in the subprogram 
 take effect immediately and are not "reversed" if the subprogram terminates with an unhandled exception.

Our inclusion of the NOCOPY hint is only a request. There are a number of scenarios that cause the 
compiler to ignore the hint and continue to pass the argument by value. These include:

* The actual parameter must be implicitly converted to the data type of the formal parameter.
* The actual parameter is the element of an associative array.
* The actual parameter is a scalar variable with the NOT NULL constraint.
* The actual parameter is a scalar numeric variable with a range, size, scale, or precision constraint.
* The actual and formal parameters are records, one or both was declared with %ROWTYPE or %TYPE, 
   and constraints on corresponding fields differ.
* The actual and formal parameters are records, the actual parameter was declared (implicitly) as the 
index of a cursor FOR LOOP statement, and constraints on corresponding fields differ.
* The subprogram is invoked through a database link or as an external subprogram.

In all of these cases, the NOCOPY hint is silently ignored by the PL/SQL compiler and the IN OUT 
argument's value is passed to the procedure by value (the default), instead of being passed by 
reference. As a result, if the subprogram call ends with an unhandled exception, the value of the 
argument IS NOT changed when the subprogram exits.


*/
