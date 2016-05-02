<#
.SYNOPSIS
    Test a variable value against DBNull.

.DESCRIPTION
    With Test-DBNull you can test whether a variable value that derives from a
    database field has a valid value.

    If you deal with databases you may need to determine whether a database
    field has a nonexistent value. A database field might not contain any data.
    That is, the field is considered to exist but not having a value. The
    DBNull class represents such a nonexistent value. Test-DBNull tests the
    given  against a DBNull reference object.

.EXAMPLE
    Test-DBNull -Value $queryResult.Status

.EXAMPLE
    $queryResult.Status | Test-DBNull

.INPUTS
    System.Object

.OUTPUTS
    System.Boolean
#>
function Test-DBNull
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    Param
    (
        # Identifies the value to inspect
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [System.Object]
        $Value
    )
    ([System.DBNull]::Value).Equals($Value)
}
