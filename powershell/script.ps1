#meu primeiro powershell script
#echo "Meu diret�rio atual: $(Get-Location)" #ou pwd
#write-host "Meu usu�rio atual: $(whoami)"

#vari�vel dada
#$ip = "192.168.163.1"
#echo "Varrendo o host: $ip"

#pegar uma vari�vel
#$ip2 = read-host "DIGITE O IP"
#$porta = 80
#echo "Varrendo o Host $ip2 e porta $porta"

#variavel com ping
#echo "Efetuando PING no Host $ip2"
#ping -n 1 $ip2 | Select-String "bytes=32"


#DESEC SECURITY - PING SWEEP
#parametros sao colocados assim como no bash: ./programa.ps1 192.168.163.2
param($p1)
if (!$p1){
    echo "MODO DE USO: .\script.ps1 192.168.163.2"
  } else {
    echo "Efetuando PING no Host $ip"
    foreach ($ip in 1..254){
    try {$resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
    $resp.Line.split(' ')[2] -replace ":",""
    } catch {}
    }
    }

