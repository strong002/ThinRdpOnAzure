# using Azure PowerShell 0.9.8
Switch-AzureMode AzureResourceManager
$group = "ThinRdpVm"
New-AzureResourceGroup -Name $group -Location "USGov Virginia"
New-AzureResourceGroupDeployment -ResourceGroupName $group -TemplateFile ".\ThinRdpVm.json" -TemplateParameterFile ".\ThinRdpVm.param.json" 
