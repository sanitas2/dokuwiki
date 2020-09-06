= Plan Sieci  =
{{tag>infrastruktura}}
----

Infrastruktura która zapewnia członkom HS dostęp do internetu. Nie mylić z [[lab sieciowy]].


Adresacja sieci 10.14.0.0/16 na razie proponowana przez HSWAN

> (6) It is easier to move a problem around (for example, by moving the problem to a different part of the overall network architecture) than it is to solve it.
>    (6a) (corollary). It is always possible to add another level of indirection.


== Rezerwacja podsieci ==
=== 10.14.0.0/16 ===
Adresacja ta została wybrana ze względu na niekolizyjność z innymi polskimi HS'ami. Pozwoli na mniej problematyczne ewentualne peerowanie, oszczędzenie na NAT. Inspirowane hs-krk.

{| class="wikitable sortable" border=1
!podsieć!!  przeznaczenie!!  uwagi
|-
| 10.14.4.0/24  ||  DMZ ||  
|-
| 10.14.5.0/24  ||  SEC ||  maluszki, esp, IoT, automation
|-
| 10.14.10.0/24  ||  LAN ||  klienci DHCP
|-
|}

== Rezerwacja IP ==
=== 10.14.4.0/24 ===

Mam nadzieje, że tymczasowo
{| class="wikitable sortable" border=1
!IP  !!Host  !!Opis  
|-
|   10.14.10.4 || [[projekty:serwer_na_laptopie || squire]]   || rzeczy 
|-
|}
