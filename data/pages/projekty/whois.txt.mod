= whois / at.hs3.pl =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>not7cd|not7cd]], [[user>mw|mw]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-01-12  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>projekty:skończony projekty:stoi}} Działa na [[http:''at.hs3.pl/|at.hs3.pl]]  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Repo |https:''github.com/hs3city/whois |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Tagi |{{tag>projekt usługa serwis}}|
|-
| 
|-
|}

Ogólnie fajnie by było wiedzieć czy ktoś jest w hs'ie. Aktualnie jest działający skrypt dla mikrotika, który wysyła co jakiś czas POST'a do bazy danych po stronie serwera. 
=== Stack ===
# Mikrotik
# Flask

== Instrukcja ==
# Zarejestruj się będąc w spejsie
## Najlepiej nick zgodny z wiki
## Tak, hasła są hashowane
# Zajmij urządzenia które są twoje
## Jeżeli nic nie widać poczekaj maks 15 minut, mikrotik powinien je już wysłać
## Uwaga, to samo urządzenie może mieć kilka interfejsów sieciowych
# Ustaw flagi dla urządzenia (z ctrl wiele)
# W profilu możesz ustawić flagi dla siebie i zmienić dane
# Czasem wpadnij zaktualizować swoje urządzenia
# Na slacku użyj komendy ''/ktohakuje''
## <del>Nie panikuj kontener z botem wolno wstaje</del>
## Panikuj, [[spotty-kiwi]] nie żyje, <del>napraw, po dostęp uderzaj do [[user>not7cd]]</del> naprawiane
# Wykorzystaj endpoint http:''at.hs3.pl/api/now w swoim projekcie

== Opis ==

# Na wewnętrznym serwerze stoi aplikacja która nasłuchuje requestów z routera.
# Router mikrotik wysyła listę leasów na adres serwera co 12
# Serwer zbiera informacje o urządzeniach i ich właścicielach
# Serwer wystawia jeden JSON GET z aktywnością z ostatnich 30 minut
# [[https:''glitch.com/edit/#!/spotty-kiwi|Slack bot]] wysyła zapytanie na at.hs3.pl gdy wywołany

Skrypt dla Mikrotik z RouterOS >= 6.39
<code>
# Get DHCP leases records and send selected fields (MAC ADDRESS, HOST NAME, LAST SEEN and STATUS) to a webservice via POST.
:put "Get DHCP leases";
:local leases "";
:foreach i in=[/ip dhcp-server lease find] do={ 
  :local dhcp [/ip dhcp-server lease get $i] 
  :local client "\"mac\":\"$($dhcp->"active-mac-address")\",\"name\":\"$($dhcp->"host-name")\",\"last\":\"$($dhcp->"last-seen")\",\"status\":\"$($dhcp->"status")\"";
  :set $leases ($leases, $client);
}
:local json "[";
:local first true;
:foreach k,v in $leases do={
  if ([:len $v] > 0) do={
    if ($first = true) do={
     :set $json ($json .  "{" . $v . "}");
    } else={
      :set $json ($json . ",{" .  $v . "}");
    };
    :set $first false;
  }
}
:set $json ($json."]");
:local data ("data=" . $json);
:do {
  :put "Send DHCP leases";
  /tool fetch mode=http url="http:''webservice" keep-result=yes dst-path="sendleases.txt" http-method="post" http-data=$data;
} on-error={
  :put "Send DHCP leases failed!";
  log warning "Send DHCP leases failed!";
}
</code>

Skrypt wysyła dane w parametrze data sformatowane do json:
<code>
data=[{"mac":"11:22:33:44:55:66","name":"Dom","last":"50w6d16h1m10s","status":"waiting"},{"mac":"AA:BB:CC:DD:EE:FF","name":"HS","last":"4d1h58m8s","status":"bound"}]
</code>
== Log ==
Proof of Concept: skrypt na mikrotiku komunikujący się z aplikacją
 --- ''2018/03/03 5:36''

----
Program uruchomiony na serwerze w HS
 --- ''[[user>not7cd|not7cd]], [[user>mroz|mroz]] 2018/03/25 16:18''

----
Forwad i DNS na serwer + [[https:''glitch.com/edit/#!/spotty-kiwi|Bot na slacku]]
 --- ''[[user>not7cd|not7cd]] 2018/04/08 12:38''

----
Hairpin NAT((https:''wiki.mikrotik.com/wiki/Hairpin_NAT)) dla at.hs3.pl
Sensowny docker w testach
 --- ''[[user>not7cd|not7cd]] 2018/04/15 13:54''

----
glitch.com coś zmienił z SQlite więc [[https:''glitch.com/edit/#!/spotty-kiwi|spotty-kiwi]] nie działa
 --- ''2018/04/22 15:17''

----
Prawilny deployment na [[projekty:serwer_na_laptopie|Serwer na laptopie]].
 --- ''[[user>allgreed|allgreed]] 2018/04/25 23 z hakiem''

---- 
Instalacja nginx + certbot (https:''www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-16-04), konfiguracja nginx w trybie reverse proxy dla at.hs3.pl, przekierowanie portu na routerze. MAMY HTTPS! Do zrobienia zostało - całkowite ukrycie at.hs3.pl za reverse proxy (aktualnie port 80 jest serwowany bezpośrednio przez aplikację)
 --- ''[[user>mroz]] 2018/07/01 16:40''
 --- ''[[user>not7cd]] 2018/07/01 16:40''

----

kontener wywalony na 127.0.0.1:6000
dostęp tylko przez proxy ngnix'a
 --- ''[[user>not7cd]] 2018/07/04 17:57''
== Podobne projekty ==
* http:''wiki.hswro.org/projects/wlokalu.hswro.org
* https:''github.com/HackerspaceKRK/WHOis-HS
* https:''wiki.hackerspace.pl/projects:checkinator 