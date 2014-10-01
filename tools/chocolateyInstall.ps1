$package = 'SQL2012.NativeClient'

try {
  $params = @{
    packageName = $package;
    fileType = 'msi';
    silentArgs = ' /qb IACCEPTSQLNCLILICENSETERMS=YES';
    url = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x86/sqlncli.msi';
    url64bit = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x64/sqlncli.msi';
  }

  Install-ChocolateyPackage @params

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
