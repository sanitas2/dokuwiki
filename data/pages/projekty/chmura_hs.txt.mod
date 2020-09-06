= Chmura hs =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-04-03  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>w_realizacji}}  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Tagi|{{tag>projekt sieć rpi}}  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Trello|[[https:''trello.com/b/o62313pf/pi-cloud|pi-cloud]] |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Repozytorium - gui| [[https:''github.com/hs3city/rpi-cluster-manager|hs3city/rpi-cluster-manager]]|
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Repozytorium - biblioteki| [[https:''github.com/hs3city/matka.lab.hs3.pl|hs3city/matka.lab.hs3.pl]]|
|-
| 
|-
|}

Projekt ma na celu stworzenie zautomatyzowanej, odizolowanej sieci laboratoryjnej na terenie HSu. 

== Warstwa sprzętowa ==
Wymagania:
# gotowa do obsłużenia 16 podłączonych przewodowo urządzeń
# 16 gotowych platform/miejsc z gotowym, wyprowadzonym zasilaniem 5v/2A oraz przewodem lan
# wizualnie platformy mają wyglądać jak chmurki

== Warstwa automatyzacji sieci ==
Wymagania:
# użytkownik musi być w stanie, w ciągu 5 minut od podłączenia malinki do sieci uzyskać własną subdomenę w domenie laboratoryjnej
# subdomena powinna umożliwić użytkownikowi udostępnienie w internecie aplikacji http/https na standardowych portach
# użytkownik musi być w stanie zalogować się zdalnie do sieci laboratoryjnej
# panel administracyjny sieci jest dostępny tylko z wewnątrz sieci


== Worklog ==

* 2019-04-03 - fizycznie sieć została zestawiona - jest router (carambola 2), switch 16-sto portowy fast ethernet, płytka dystrybuująca zasilanie z jednego zasilacza DC 19V, dwie w pełni sprawne platformy wraz z wyprowadzonym zasilaniem, sugnałem lan i w kształcie chmurki.
* 2019-04-07 - powstała biblioteka do zdalnego zarządzaniami ustawieniami sieci na głównym routerze (carambola 2) chodzącym pod kontrolą openwrt. Aktualnie biblioteka wspiera: skanowanie sieci lan w poszukiwaniu IP oraz MAC urządzeń w sieci oraz przypisywanie nazwy hosta dla urządzenia wraz z nieskończonym lease time. narazie nazwa hosta jest widoczna tylko sieci LAN. Biblioteka: https:''github.com/hs3city/matka.lab.hs3.pl/
* 2019-04-08 - sieć laboratoryjna ma własny publiczny ip 213.192.75.117 . Panel administracyjny oraz ssh routera są dostępne tylko z LAN, do biblioteki "matka" dodano funkcję o wymownej nazwie forward_port

== Notatki ==

=== konfiguracja nazwy hosta ===

OpenWRT zainstalowany na camboli2 wykorzystuje demona [[http:''www.thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html|dnsmasq]], który służy do zarządania konfiguracją mi. DHCP oraz DNS. Konfiguracja demona opisana jest na [[https:''openwrt.org/docs/guide-user/base-system/dns_configuration|wiki projektu openwrt]]. 

dnsmasq umożliwia: ustawienie Static Leases, konfigurację własnych plików hosts .

przykład: Static Lease dla maszyny o mac adresie "FU:CK:YO:UA:SS:HO" oraz przypisanie my nazwy hosta 'mroz.lab.hs3.pl'.

```
config host
        option dns '1'
        option mac 'FU:CK:YO:UA:SS:HO'
        option ip '192.168.1.101'
        option leasetime 'infinite'
        option name 'mroz.lab.hs3.pl'
```
 
