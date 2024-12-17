#adds regkeys to pass Nessus vuln checks
$registryPath = "HKLM:\Software\Wow6432Node\Microsoft\Cryptography\Wintrust\Config"
$name = "EnableCertPaddingCheck"
$value = "1"

IF(!(Test-Path $registryPath)) {
	New-Item -Path $registryPath -Force | Out-Null
	New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType String -Force | Out-Null
}
ELSE {
	New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType String -Force | Out-Null
}

$registryPath1 = "HKLM:\Software\Microsoft\Cryptography\Wintrust\Config"
$name1 = "EnableCertPaddingCheck"
$value1 = "1"

IF(!(Test-Path $registryPath1)) {
	New-Item -Path $registryPath1 -Force | Out-Null
	New-ItemProperty -Path $registryPath1 -Name $name1 -Value $value1 -PropertyType String -Force | Out-Null
}
ELSE {
	New-ItemProperty -Path $registryPath1 -Name $name1 -Value $value1 -PropertyType String -Force | Out-Null
}