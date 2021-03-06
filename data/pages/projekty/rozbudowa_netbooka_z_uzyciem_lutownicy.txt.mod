==== Rozbudowa netbooka z użyciem lutownicy ====
{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2017-12-26 20:55  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>zakonczony}}  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Tagi|{{tag>projekt}}  |
|-
| 
|-
|}

Pierwotnym celem projektu była rozbudowa netbooka ASUS E200H o dodatkowy dysk jednak, gdy zauważyłem, że wewnątrz urządzenia jest stosunkowo duża wolna przestrzeń, moja wyobraźnia podsunęła kilka pomysłów :
# wlutowanie dodatkowej pamięci, dokładniej 64 GB pendrive na usb
# wlutowanie dodatkowego huba usb
# wlutowanie do środka mikrokontrolera zdolnego do włączania i wyłączania zasilania kamery, mikrofonu oraz wlutowanego pendrive.

===== Podzespoły i materiały =====
* Pendrive: SAMSUNG 64GB (MUF-64CB/EU) - bo akurat taki miałem pod ręką
* Hub USB: najtańszy cztero portowy hub USB z pobliskiego marketu (chyba za 5zł)
* mikrokontroler: CJMCU-Beetle Leonardo USB ATMEGA32U4
* Drut nawojowy 0,2 mm żółty oraz czerwony (patrz [[http:''rzeczy.hs3.pl|Sprzęt HS]] przedmioty 0020, 0042)

===== Stan projektu =====
1. Pierwszy prototyp - sprawdzenie czy skrętka z przewodów nawojowych nie degraduje sygnału USB:
{{ :img_20171225_221401.jpg?direct&400 | Prototyp 1: hub usb z przylutowaną pmięcią usb oraz mikrokontrolerem}}
2. Prototyp 2 - wszystko zlutowane oraz przyklejone wewnątrz netbooka. Arduino jest podlutowane pod włącznik, zaś na krawędzi netbooka wyprowadzono przycisk resetujący arduino.
{{ :img_20171226_203756.jpg?direct&400 | Działający prototyp}}

===== Dalsze pomysły =====
# arduino jako rodzaj zewnętrznego management engine