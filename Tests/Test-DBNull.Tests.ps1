$ScriptRoot = Split-Path -Parent $PSScriptRoot
$ScriptFile = (Split-Path -Leaf $PSCommandPath) -replace '\.tests\.ps1$', '.ps1'
. "$ScriptRoot\$ScriptFile"

Describe 'Test-DBNull' {

  It 'running with empty string returns False' {
    $testValue = ''
    Test-DBNull -Value $testValue | Should Be $false
  }

  It 'running with DBNull value returns True' {
    $testValue = [System.DBNull]::Value
    Test-DBNull -Value $testValue | Should Be $true
  }
}
