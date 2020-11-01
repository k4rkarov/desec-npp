##PORTA INFORMADA PELO USUARIO
#param($ip,$porta)
#if(!$ip -or !$porta){
#    echo "DESEC SECURITY - PORTSCAN"
#    echo ".\portscan.ps1 192.168.15.1 80"
#} else {
#if (Test-NetConnection $ip -port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
#    echo "porta aberta"
#} else {
#    echo "porta fechada"
#}
#}


#BUSCA POR PORTAS AUTOMATICAMENTE
param($ip)
if(!$ip){
    echo "DESEC SECURITY - PORTSCAN"
    echo ".\portscan.ps1 192.168.15.1 80"
} else {
$topports = 21,22,3306,80,443
try {foreach ($porta in $topports){
if (Test-NetConnection $ip -port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "porta $porta aberta"
}} else {
    echo "porta $porta fechada"
}} catch {}
}