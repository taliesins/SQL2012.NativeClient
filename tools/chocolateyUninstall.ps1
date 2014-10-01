# HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\
$msiId = '{83C7F964-AC58-4104-B613-B4D0F61DA8CD}'
$msiId64 = '{D411E9C9-CE62-4DBF-9D92-4CB22B750ED5}'

$package = 'SQL2012.NativeClient'

try {
  
  if ([Environment]::IsIs64BitOperatingSystem) { Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msiId64 /qb" -validExitCodes @(0) }
  else { Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msiId /qb" -validExitCodes @(0) }
  # the following is all part of error handling
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw 
}
