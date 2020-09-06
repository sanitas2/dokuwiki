= Operacja cicha infrastruktura sieciowa =


{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-04-25  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>Planowany}}  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Tagi|{{tag>projekt infrastruktura sieć}}  |
|-
| 
|-
|}

Infrastruktura sieciowa mieszcząca się w małej, podwieszanej pod sufitem szafie rackowej jest głośna - w środku szafki znajduje się kilka urządzeń chłodzonych małymi, wysokoobrotowymi wentylatorami. Generują irytujący szum, który przeszkadza w skupieniu się.

Operacja ma na celu wymianę aktywnie chłodzonych urządzeń na chłodzone pasywnie, ewentualnie dodanie jednego dużego, wolnoobrotowego i cichego wentylatora chłodzącego całą szafę.

== Ustalenia ==

=== Sygnał dostarczany od TASK ===

Odpowiedź z TASKU "o odbioru sygnału z TASK potrzebny jest transceiver 1GE WDM (jedno włókno) Tx: 1310 nm, Rx: 1550 nm, single mode."

=== Liczba portów ===

Istniejąca na terenie budynku infrastruktura sieciowa składa się z 22 gniazdek ethernet rozprowadzonych po całym budynku. Z tego powodu musimy zastosować przynajmniej 24-ro portowy switch. Jesli to możliwe switch powinien wspierać przepływność 1GB.
=== Propozycje ===
Wymiana dostarczonego od TASK aktywnie chłodzonego switcha światło <-> ethernet na sprzęt własny. Możliwe są 2 opcje:

# wykorzystanie posiadanego już switcha linksys ze złączem SFP
# zakupienie nowego routera microtic ze złączem SFP - można zadzwonić do przedstawicieli handlowych mikrotik i się podpytać o sugerowany model do naszych zastosowań np (RB962UiGS-5HacT2HnT)

w obydwóch przypadkach potrzeba jescze dokupić transerceivery SFP oraz odpowiedni patchord.

W obydwóch przypadkach należy sprawdzić jak dostarczony jest sygnał od TASKU - jakie są przewody i wtyczki (prawdopodobnie SC/PC, ale trzeba się upewnić)

Zaletą rozwiązania 2 jest eliminacja jednego urządzenia z szafy rackowej, wadą cena (~430zł).

'''Potencjalna lista zakupów:'''
# SFP WDM, 1Gb, SC SM, 20km, TX:1310nm, RX:1550nm, WO-SWS-1213-020K
# Patchcord światłowodowy SM SC/APC-SC/UPC, 9/125, dupleks, G652D, 3.0mm, 1m
==== Posiadany sprzęt ===

# Edge Core ES3526XA {{ :projekty:img_20180425_183418.jpg?direct&200|Switch Edge Core ES3526XA }} - pasywnie chłodzony switch 24-ro portowy fast ethernet + 2 porty SFP współdzielone z 2 dodatkowymi portami ethernet 1GB. Obudowa 1U, zitergrowany zasilacz. Więcej: https:''www.cnet.com/products/accton-es3526xa-switch-24-ports-managed-desktop-series/specs/ .
# [[sprzet:networking_gear|Jakaś lista sprzętu]]

== Worklog ==

25 IV 2018 - [[user>mroz]] inicjuje akcję. 
