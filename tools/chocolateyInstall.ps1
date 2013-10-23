$package = 'SQL20012.NativeClient'

try {
  $params = @{
    packageName = $package;
    fileType = 'msi';
    silentArgs = ' /qb IACCEPTSQLNCLILICENSETERMS=YES';
    url = 'http://download.microsoft.com/download/4/B/1/4B1E9B0E-A4F3-4715-B417-31C82302A70A/ENU/x86/sqlncli.msi';
    url64bit = 'http://download.microsoft.com/download/4/B/1/4B1E9B0E-A4F3-4715-B417-31C82302A70A/ENU/x64/sqlncli.msi';
  }

  Install-ChocolateyPackage @params

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
