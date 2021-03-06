= NERF Turret =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mamert]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-05-01  |
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
!Tagi|{{tag>projekt zabawki}}  |
|-
| 
|-
|}

'' Działko poruszające się lewo/prawo i góra/dół, i strzelające piankowymi lotkami NERF ''


=== Założenia ===
Główny cel: bajer na sufit na HS i do zabierania na [[https:''oldtownfestival.net/|Old Town Festival]]

Urządzenie ma być docelowo montowane na sufit/belki i skierowane w dół. Jeśli się da, niech działa też stojąc.

To nie ma wygrywać konkursów celności, ma natomiast być w stanie machać dość masywną bronią (prawdopodobnie ponad. 1kg) na tyle zwinnie by obrócić nią o 180 stopni w ok. sekundę.

''Czemu nie silniki krokowe?'' - tu nie chodzi o powtarzalność. To nie jest:\\
"obróć 17.3 stopnia w lewo z przyspieszeniem a_h do max prędkości v_h_max, hamuj z -a_h, stop"\\
to jest\\
"cel rusza się szybko w lewo, nie strać go"

NERF Turret to kontynuacja [[projekty:asg_turret|Asg turret]] po tym jak ASG się zFUBARzyło.
=== Iteracje ===

==== ✓ Iteracja 001 ====
* ruch
* strzelanie
* sterowanie joystickiem na kablu

==== Iteracja 010 ====
* czujniki krańcowe
* Raspberry Pi Zero W:
''' kamerka IP
''' sterowanie bezprzewodowo (jeszcze bez autonomii)
* dołączenie do HS-owego IoT

==== Iteracja 011 ====
* obudowa, by się nie kurzyło
* oprogramowanie by dodatkowo potrafiło śledzić - na początek - punkt ze wskaźnika laserowego (kieruje się tam gdzie świecisz)
* podstawowa autonomia - e.g. wykrywanie i śledzenie twarzy

==== Iteracja 100 ====
* drugi egzemplarz zbudowany od zera, by wyglądało jak zbudowane przez inżyniera, a nie ewolucję
* dobra dokumentacja sprzętu, może filmik instruktażowy

== Worklog ==
Na początek bierzemy:
# Części z projektu [[projekty:asg_turret|Asg turret]] gdzie ASG się zepsuło
# Automatyczny karabin NERF
{{:projekty:nerf_gun01.jpg?500|}}

BTW, tak działa podajnik lotek:
{{ :projekty:nerf_missilefeed.mp4 |}}
NERF gun jest ciut (bardzo) duży. Trza to zmniejszyć.

{{ :projekty:nerf_gun02.jpg?600 |}}
{{ :projekty:nerf_gun03.jpg?600 |}}
[[https:''youtu.be/tD3vfX2mup4|{{ :projekty:nerf_gun04.jpg?600 |}}]]
Powyższy obrazek prowadzi do '''wideo''' na youtube.\\

Po tym kolej na malowanie...
Porada na przyszłość: upewnij się e do środka nie napyli farbą, to może zaklinować mechanizm

{{:projekty:nerf_paint01.jpg?400|}}
{{:projekty:nerf_paint02.jpg?400|}}

przylutować kabelki w miejsce przełączników...

{{ :projekty:nerf_assembly03.jpg?500 |}}

Po tym pora składać...

Ścianki z płytek z włókna szklanego, by trzymać to w kupie, przytwierdzić do podstawy, i ścisnąć mocniej luźny napęd

{{ :projekty:nerf_assembly01.jpg?400 |}}

Pierwsza płytka przytwierdzona do podstawy "kołkami" z PCL...

{{:projekty:nerf_assembly02.jpg?500|}}{{:projekty:nerf_assembly05.jpg?500|}}

... na to profil przylegający ściśle do NERFa (tak również z PCL :P )...

{{ :projekty:nerf_assembly06.jpg?500 |}}

... NERF...

{{ :projekty:nerf_assembly07.jpg?500 |}}

... i drugi profil (NERF ma nieregularny kształt, i tu jest ta część co dociska flywheel by nie drgał)...

{{ :projekty:nerf_assembly08.jpg?500 |}}

... i ostatnia płytka by to trzymać.

{{ :projekty:nerf_assembly09.jpg?500 |}}


No i działa!

OK, to nie było takie proste, tu przez miesiące coś się psuło. Ale w końcu jest OK - kliknij by obejrzeć '''ideo''' na youtube:

[[https:''youtu.be/krwHnsPP9dU|{{ :projekty:nerf_test01.jpg?600 |}}]]


Do tego bajer: ekranik microdisplay w goglach, i kamera na działku!

Wyciąć otwór w goglach (to na górze to tylko latarka)...
{{ :projekty:turret_microdisplay01.jpg?600 |}}

... szczodrze uszczelnić czarnym PCL, i gotowe!

{{:projekty:nerf_test02.jpg?500|}}
{{:projekty:nerf_test03.jpg?500|}}

=== Hardware ===
* części wyciągnięte ze starych sprzętów: silniki, czujniki przerwania wiązki
* zFrankensteiniony [[https:''nerf.fandom.com/wiki/RapidStrike_CS-18|Nerf RapidStrike CS-18 Elite XD]]
* zasilanie: ATX, może tylko dodać też baterie
* trochę dupereli: śruby, łożyska
* [[sprzet:polimorf|PCL (Polymorph)]] do łączenia rzeczy

Opis części (to obrazek; jeśli się nie pokazuje, wejdź '''[[https:''wiki.hs3.pl/_detail/projekty/turret_what_is_what.jpg?id=projekty%3Anerf_turret|TUTAJ]]'''):
{{ :projekty:turret_what_is_what.jpg |}}
=== Kod ===
https:''github.com/mamert/iot-b/tree/turret_i2c/turret/turret_move  kontroler silników, i sterowanie joystickiem na długim kablu

Na joysticku jest to: https:''github.com/jaretburkett/Arduino-I2C-Port-Expander
== Możliwości rozwoju projektu ==

* uchwyt na wymienne bronie (ASG, NERF, woda, paintball), pociąganie za spust rowerową linką hamulcową
* aplikacja na telefon? Do kamery i kontroli akcelerometrem?
* liczne optymizacje ruchu (różniczki, wyprzedzanie poruszającego się obiektu...)
* przednia szybka z detekcją uderzenia (piezo?) - dla tymczasowej deaktywacji w przypadku celnego postrzelenia z ASG
* dźwięki: głośny strzał, inne bajery. ESP32 lub karta dźwiękowa do rpi. Najfajniej głośnik z Helmholtzem, port skierowany tam gdzie lufa. Ale to ciężkie...

