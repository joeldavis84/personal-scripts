Outfile "zabbix-installer.exe"
Name "DCI Zabbix Agent 3.2"

Section

SetOutPath $PROGRAMFILES\Zabbix

DetailPrint "Extracting Zabbix Agent Executables..."
File /oname=C:\zabbix_agentd.conf zabbix_agentd.win.conf
File /x installer.nsi *

DetailPrint "Registering Service..."
ExecWait "C:\Program Files (x86)\Zabbix\zabbix_agentd.exe --install"

DetailPrint "Creating Inbound Firewall Rules..."
ExecWait 'netsh firewall add allowedprogram "C:\Program Files (x86)\Zabbix\zabbix_agentd.exe" "Zabbix Agent" ENABLE'

DetailPrint "Starting Service..."
ExecWait 'net start "Zabbix Agent"'

SectionEnd