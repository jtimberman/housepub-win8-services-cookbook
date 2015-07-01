describe 'housepub-win8-services' {
	$service_list = @("AppMgmt", "bthserv", "PeerDistSvc", "CertPropSvc", 
		"TrkWks", "WPCSvc", "iphlpsvc", "MSiSCSI", "Netlogon", "napagent",
		"CscService", "RpcLocator", "SensrSvc", "SNMPTRAP", "WbioSrvc", 
		"wcncsvc", "WMPNetworkSvc")
	foreach ($service in $service_list) {
		It "Should not be running $service" {
			(Get-Service -name $service).status | Should Be 'Stopped'
		}

		It "Should disable $service" {
			(Get-WmiObject win32_service | Where {$_.Name -eq $service}).StartMode | Should Be 'Disabled'
		}
	}
}