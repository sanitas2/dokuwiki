{{ :projekty:20191028_165337.jpg?200|}}


= Infobox =

{| class="wikitable sortable" border=1
!Zamieszany| v1.0: [[user>wolskey]] [[user>not7cd]], v2.0: [[user>yasiu]] [[user>critbit95]] |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-03-13  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>coś_się_dzieje stoi infrastruktura}}  |
|-
| 
|-
|}

=== TODO ===

* <del>załatwić sensowny HDMI->VGA</del>
* <del>załatwić przejściówkę z PS2->USB</del>
* Automatyczne wygaszanie ekranu, komendą ''xset dpms force off''
* <del>załatwić przekaźnik do 230 żeby sterować ekranem</del> wyłaczamy softowo
* załatwić czujnik ruchu
* <del>załatwić 5W zasilacz do BananaPI</del>
* wykorzystanie kamery onboard (fotobudka hs?)
* Wykorzystanie kamery laptopa (podgląd na bebechy w środku? wyprowadzenie na zewnątrz?)
* pomalowanie całości
* wywiercenie dziur na różne interfejsy
* Edytować skrypt kalibracji dotyku, tak aby brał pod uwagę przekręcony ekran.
* Podłączenie drukarki do infoboxa? - Można drukować przez Octoprint
* Instalacja Domoticza
  


=== Kalibracja Dotyku ===

FIXME uprościć te kroki do skryptu bashowego

Prerequisites:
* [[https:''github.com/tias/xinput_calibrator|xinput_calibrator]]

Celem tego procesu jest wyznaczenie i aplikowanie macierzy która obróci nam dotyk o 90* zgodnie z ruchem wskazówek zegara oraz odpowiednio skalibruje do wielkości ekranu.

Macierz obracająca [3x3]: '0 -1 1 1 0 0 0 0 1' (3 rzędy po sobie)

# Tymczasowo zaaplikuj macierz obracającą dotyk o 90* w prawo: ''xinput set-prop "eGalax Inc." "libinput Calibration Matrix" 0 -1 1 1 0 0 0 0 1''
# Zapisz skrypt do pliku i wykonaj: https:''wiki.archlinux.org/index.php/Talk:Calibrating_Touchscreen#Wrapper_around_xinput_calibrator
# TranformationMatrix to macierz która nas interesuje.

Teraz wyznaczymy finalną macierz która będzie aplikowana przy starcie systemu:
# Mnożymy razem TranformationMatrix z macierzą obracającą (w takiej kolejności!) na tablicy w coworku bądź przy pomocy internetowego kalkulatora.
# gotową macierz zapisujemy w ''/etc/udev/rules.d/98-touchscreen-cal.rules'' jako np. ''ATTRS{name}=="eGalax Inc.", ENV{LIBINPUT_CALIBRATION_MATRIX}="0 -1.3763519899191432 1.189520109209282862 1.5238217034436254 0 -0.35640709651917133 0 0 1"''

Cyferki to nasza wynikowa macierz, ''eGalax Inc.'' to nazwa naszego dotyku wyciągnięta z komendy ''xinput''

=== Instalacja OS na laptopie bez ekranu ===

Z racji braku ekranu problemem jest instalacja systemu. Możliwe że głupim fartem przed zepsuciem ekranu został zmieniony piorytet bootowania w BIOS'ie gdzie USB jest nad HDD (nie do końca pewne). Jeżeli nie, to musisz rozpocząć instalację z wypiętym bądź pustym HDD.  Wybierając distro musisz upewnić się że proces instalacji może odbyć się na zewnętrznym wyświetlaczu, a po instalacji na HDD będzie można wyłączyć niedziałający ekran i ustawić zewnętrzny jako główny.
W Ubuntu podczas instalacji oraz po instalacji trzeba było na ślepo przeklikać sie i wyrzucić okienko instalatora oraz ustawienia na drugi monitor (Ctrl + Shift + Strzałki).
Ewentualne błędy w instalacji nie mogą być wykryte gdyż BIOS i Grub wyświetlają się na niedziałającym wyświetlaczu. Z jakiegoś powodu instalacja Manjaro nie działała, na czym zostało spędzone dużo czasu (dalej nie wiadomo czemu nie działa).

== Worklog ==

===== v1.0 =====

* Skomplementowanie setu, zakup karty SD do bananapi  --- ''[[user>wolskey]] 2018/03/12 20:16''

* Instalacja bananiana z xfce --- ''[[user>not7cd]] 2018/03/13 00:05''

* Zdobycie stabilnego zasilania dla banana --- ''[[user>critbit95]] 2019/06/14 19:54''

----

===== v2.0 =====

{{ :projekty:20191027_180954.jpg?200 |}}

* Zabawy z wrzuceniem laptopa z zepsutym ekranem do infoboxa, padło gdzieś na etapie konfiguracji monitora --- '' [[user>critbit95]] [[user>yasiu]] + Laptop Oktawii ~ Czerwiec 2019 ''
* Wznowienie prac nad wrzuceniem laptopa: wyciągnięto z obudowy na deskę, dodano zasilacz i peryferia. --- '' 2019/10/26 [[user>yasiu]] (pijany) ''

{{ :projekty:20191027_215653.jpg?200 |}}

* Wrzucono laptop z uszkodzonym ekranem w customowej obudowie do infoboxa, rozpoczęto prace nad instalacją systemu i konfiguracją peryferiów --- ''[[user>critbit95]] oraz [[user>yasiu]] 2019/10/27 ''
* Zbindowany control do Caps Locka via ''[[user>olo]] 2019/10/28 ''
* Okiełznany dotyk przez ''[[user>yasiu]] 2019/10/29 ''

{{ :projekty:20191030_182248.jpg?200 |}}

* Dodano przycisk uruchamiania poza obudową ''[[user>yasiu]] 2019/10/30 ''
