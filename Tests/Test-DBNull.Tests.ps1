$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace('.Tests.', '.')
. "$here\..\$sut"

Describe 'Test-DBNull' {

    It 'returns False' {

        $testValue = ''

        Test-DBNull -Value $testValue | Should Be $false
    }

    It 'returns True' {

        $testValue = [System.DBNull]::Value

        Test-DBNull -Value $testValue | Should Be $true
    }
}
