/*

a mutating table is :
    a table that is being modified by an update, delete, or insert statement
    or a table the might be updated by the effects of a delete cascade constraint
the session that issued the triggering statement cannot query or modify a mutating table.
this restriction prevents a trigger from seeing an inconsistent set of data
this restrction applies to all triggers that use the for each row clause

when you tring to modify a table and in the same time your trying to read from it using the trigger
> an error will be displayed.

try to use compound trigger to read the table using before statement and store the
old values into variables, and than use those variables inside before each row

see the last section in the video for the examples

*/