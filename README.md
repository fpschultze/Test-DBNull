# Test-DBNull
PowerShell function to test a value against dbnull

With Test-DBNull you can test whether a database field has a valid value.

If you deal with databases you may need to determine whether a database
field has a nonexistent value. A database field might not contain any data.
That is, the field is considered to exist but not having a value. The
DBNull class represents a nonexistent value. Test-DBNull tests the given
value against a DBNull reference object.
