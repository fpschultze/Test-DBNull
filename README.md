[![Build status](https://ci.appveyor.com/api/projects/status/3qetj7op52ry5075/branch/master?svg=true)](https://ci.appveyor.com/project/fpschultze/test-dbnull/branch/master)

# Test-DBNull
PowerShell function to test a variable value against DBNull.

With Test-DBNull you can test whether a variable value that derives from a
database field has a valid value.

If you deal with databases you may need to determine whether a database
field has a nonexistent value. A database field might not contain any data.
That is, the field is considered to exist but not having a value. The
DBNull class represents such a nonexistent value. Test-DBNull tests the given
value against a DBNull reference object.
