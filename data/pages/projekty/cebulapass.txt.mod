= Cebulapass =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz]] CritBit95, TomaszWU, Mirek, Mamert |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-09-08  |
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
!Tagi|{{tag>projekt}}  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Kanał na slacku| hs3city.slack.com -> cebulapass |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Repozytorium | [[https:''github.com/hs3city/cebulapass | github.com/hs3city/cebulapass]] |
|-
| 
|-
|}

Projekt ma na celu stworzenie cebulapass - popisiowej konferencyjnej blachy konferencyjnej na najbliższy cebulacamp w okolicach kwietnia. Blacha ma być programowalnym zestawem uruchomieniowym o maksymalnej cenie końcowej 25 zł/szt. (warszawskie słoiki robią za 25 euro. Burżuje ... ).

=== Wymagania funkcjonalne ===
# Numeracja
# Komunikacja przez NRF24
# Mikrokontroler zgodny z arduino i mysensors (wstępnie chyba STM32, uwaga: 2.0-3.6V, przez diodę?)
# interfejs użytkownika - wyświetlanie + interakcja
# złącze usb do programowania
# zasilanie bateryjne, zintegrowany akumulator 
# wyłącznik
# ładowanie z usb (Type A na rogu płytki?)
# wyprowadzenie gpio do polutwania
# wyprowadzenie SPI, I2C itp. na gpio (mile widziane min. 2 wyprowadzenia dla SPI i może I2C by nie lutować do 1 pada)
# pady do przylutowania popularnych czujników - np. dht, czujnik ciśnienia , światła, rfid?, dioda ws2812
# zestawy po 3 piny/pady: GND, GPIO, BAT+ - dla wygody , m.in. ws2812 (niebieski nie działa pod niższym napięciem, R & G tak) i serwo (chodzi słabien <5V ale chodzi)
# wyjscia wysokopradowe (~20mA, GPIO przez tranzystor, może mosfet)
# dioda led (jaki cel? Status? Można zastąpić WS2812?)

=== Wymagania pozafunkcjonalne ===

# wymiary jak karta kredytowa (85.60mm × 53.98mm, opcjonalnie rogi promień 2.88–3.48mm)
# miejsce na śrubki montażowe
# umieścić elektronikę i baterię po jednej stronie płytki, a ekran i przyciski po drugiej
# 

=== Warto by mieć ===
# pcb dopasowane do ogólnodostępych tnich obódów projektowych
# brzęczyk
# dwustronna komunikacja 


=== Lista wyprowadzeń pinów ===

Każdy zestaw pinów prawdopodobnie zostanie zrealizowany jako szereg padów, w rozstawie 2.54mm, do wygodnego przylutowania albo kabli, albo headerów.

TBD czy któreś z tych zestawów lepiej dać dziury niż pady.

TBD czy którymś zestawom nie usunąć VCC / GND

TBD kolejność pinów w zestawie

# header programowania - albo zgodny z bluepillem [GND, DCLK(PA14), DIO(PA13), 3.3V], ale tylko [DCLK, DIO], jeśli wgramy USB bootloader
# boot zworka [BOOT0, VCC] (pulldown na BOOT0) - 2 piny i pulldown zamiast 3. BOOT1(PB2) jest zbędny. Może nie zworki a przełączniki suwakowe jak MSK-12C02?)
# I2C: [VCC, GND, SCL1(PB6), SDA1(PB7)], oraz albo druga kopia tego samego (2 sensory na 1 kanale) albo z drugiego kanału: [VCC, GND, SCL2(PB10), SDA2(PB11)] UWAGA: [PB6, PB7] to także [TX1, RX1] więc to ma 2 zastosowania. TBD: diody, by było poniżej 3.3V na SDA/SCL?
# SPI: [GND, VCC, MISO1(PB6), MOSI1(PB7), SCK1(PB5), NSS1(PB4)] lub [GND, VCC, MISO2(PB14), MOSI2(PB15), SCK2(PB13), NSS2(PB12)]
# USB (nie na pady, a na faktyczny USB): [USB-(PA11), USB+(PA12)]
# wyjścia dużej mocy: pary [MOSFET_DRAIN, VCC] dla kilku (4-5?) GPIO z PWM (PA0/PA1/PA2/PA3/PA8/PA9/PA10/PB0/PB1)
# kilka zestawów [GND, GPIO, VCC] dla niektórych z pozostałych GPIO, do wygodnego łączenia serwo, 1wire (e.g. WS2812), etc
# kilka dodatkowych GND

Pinout jest tutaj: https:''i.stack.imgur.com/uEky4.jpg

== Dokumenty/Linki ==

# szacowanie kosztów projektu: http:''vps711754.ovh.net/calc/cebulapass_bom

== Worklog ==

# 2019-09-06 - pierwsze spotkanie, rozpoczęcie projektu. CricBit chce robić panelizację oraz logistykę, Łukasz oferuje swoją pomoc po trochę we wszystkim - od programowania po projekt PCB, Mirek chętnie pomoże w integracji systemu z jakąś centralną bramką. Ustaliliśmy ogólną wizję projektu - cena końcowa maks 25zł/szt., rozmiar : karta kredytowa, cebula  pass powinien posiadać działające: radio nrf24, mikrokontroler (ARV - arduino, czy stm?), wyświetlacz, BMS, miejsce na baterię/akumulator, interfejs - przyciski albo pole dotykowe. Wymyśliliśmy pomysł na cechę wyjątkową/wyróżnik - para dioda + fotodioda do bezpośredniej komunikacji na odległość ~1cm umożliwiające bezpieczną wymianę kluczy do szyfrowania komunikacji między dwoma urządzeniami.
# 2019-09-16 - Ustaliliśmy, że jako akumulatory wykorzystamy 18650 zdobyte ze starych baterii laptopowych. Na hs zdobyliśmy kilkadziesiąt sztuk, Mamert je zabrał do sprawdzenia. Na dzień dzisiejszy mamy jakieś ~50szt. 
# 2019-09-22 - arkusz kalkulacyjny do zbierania informacji o częściach i cenach jest naprawiony http:''vps711754.ovh.net/calc/cebulapass_bom
# 2019-09-23 - ogniwa 18650 przetestowane: 108 sztuk po minimum 1Ah. Reszta słabsze lub niepewne, ale to wystarczy.

== Zadania ==
# [ ] mroz oszacować ilość miejsca na płytce - zrobić bardzo wstępny projekt w kikad żeby zobaczyć ile miejsca zostaje na elementy
# [x] mroz - zestawić stronę projektu, ethercalc do wrzucania cen komponentów systemu
# [ ]wszyscy - wyszukać komponenty i ich ceny celem wyboru funkcjonalności na którą nas stać.