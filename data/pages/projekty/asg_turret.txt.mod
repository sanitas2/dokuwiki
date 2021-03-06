= Asg turret =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mamert]], [[user>łasica]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-01-10  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>zakończony}}  |
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

'' Działko poruszające się lewo/prawo i góra/dół, i strzelające kulkami ''
{{ :projekty:turret.png?400 |}}

=== Założenia ===
Główny cel: bajer na [[https:''oldtownfestival.net/|Old Town Festival]] 2019

Urządzenie ma być docelowo montowane na sufit/belki i skierowane w dół. Jeśli się da, niech działa też stojąc.

To nie ma wygrywać konkursów celności, ma natomiast być w stanie machać dość masywną bronią (prawdopodobnie ponad. 1kg) na tyle zwinnie by obrócić nią o 180 stopni w ok. sekundę.

Ma też służyć jako prototyp wersji paintball (czyli jeszcze cięższe)

''Czemu nie silniki krokowe?'' - tu nie chodzi o powtarzalność. To nie jest:\\
"rusz 17.3 stopnia w lewo z przyspieszeniem a_h do max prędkości v_h_max, stop"\\
to jest\\
"cel rusza się szybko w lewo, nie strać go"
=== Iteracje ===

==== Iteracja I ====
Sprawny ruch i strzelanie, sterowanie kontrolerem na kablu
==== Iteracja II ====
Raspberry Pi Zero W jako kontroler (bezprzewodowo, jeszcze bez autonomii), do tego kamerka
==== Iteracja III ====
Oprogramowanie by dodatkowo potrafiło śledzić - na początek - punkt ze wskaźnika laserowego (kieruje się tam gdzie świecisz). A, i jakaś obudowa.

== Worklog ==
Przejrzano liczne silniki od drukarek, wkrętarek, starych CNC, i samochodów. Przetestowano, podłubano, wyrzucono. Obecnie to są najpewniejsze kandydaty:\\
{{:projekty:turret01.jpg?500|}}  {{:projekty:turret02.jpg?350| }}

Silnik wycieraczek, jakiś chyba od kserokopiarki, i 2 od szyb samochodowych. Wszystkie mają przekłądnie ślimakowe.

Jak widać, sporo trudu już weszło w zespolenie z elementami wykonanymi z [[sprzet:polimorf|PCL]].


Do tego wybrano już pistolet-dawcę narządów:{{ :projekty:turret03.jpg?400 |}}

Za obrót w poziomie będzie odpowiedzialny silnik od wycieraczek. Jest potężny, i pełen obrót wykonuje, na 15V, w ok. sekundę. Trza było otworzyć żeby ominąć elektronikę na badanie której nie mam cierpliwości.
{{ :projekty:silnik_wycieraczek.jpg?400 |}}

ASG strzela raz po raz dopóki jest podłączony prąd (przeznaczone na 7.2V, pięknie działa także na 1 baterii 3.7V).\\
W mikrokontrolerze chcemy wiedzieć, kiedy nastąpi strzał, aby je poprawnie liczyć.\\
Podstawowy mechanizm ma ruchomą część która odskakuje przy strzale. Na nią można dać czujnik krańcowy - fotokomórkę. Mam kilka wyciągnięte z drukarki, więc dolutowałem standardowe piny i umocowałem 1 do obudowy elementu ASG:\\
{{:projekty:czujnik_przerwania.jpg?350|}}
{{:projekty:asg_dzyndzel.png?470|}}
{{:projekty:asg_dzyndzel2.png?260|}}

Wstępnie złączono wybrane 2 silniki - bardzo mocne, i, zgodnie z zamiarem, obraca się o 180 stopni w < 1s, ale centrowanie wymaga poprawki, aby nie szarpało na boki.\\
Podłączone do joysticka, oba silniki chodzą poprawnie.\\
{{:projekty:turret_motors1.mp4|}}

I teraz pech, niestety - przy strzelaniu "na sucho" pękła 1 wrednie krucha plastikowa część:\\
{{ :projekty:asg_zlamane_1.jpg?700 |}}
Jest ona odpowiedzialna za ładowanie kulki przed strzałem. Działa na nią niebagatelna sprężynka, i do tego ciągnie inny kawałek plastiku.\\
Normalnie znaczyłoby to że wyrzucamy cały pistolet ASG, ale za dużo wysiłku w to zainwestowałem by się poddać, coś się wymyśli :)\\
...\\
Nic innego nie pomagało, więc naciąłem wzdłuż tarczą Dremlową, i w szparę wkleiłem Poxipolem kawałek obdrapanego drutu od spinacza:
{{ :projekty:asg_zlamane_2.jpg?700 |}}
No, i po oszlifowaniu zdaje się trzymać kupy:
{{ :projekty:asg_zlamane_3.jpg?700 |}}
Pozostaje złożyć z powrotem mechanizm w którym to chodzi (wcale nie takie proste) i trzymać kciuki że drut i klej wystarczą.
{{ :projekty:asg_zlamane_4.jpg?400 |}}
\\
\\
\\
\\
Rusza się bardzo ładnie, kliknij obrazek aby obejrzeć '''wideo''' na youtube:\\
[[https:''youtu.be/5uYCLJcbeK0|{{ :projekty:turret_move_thumb.jpg?400 |}}]]
\\
\\

...
...
...


'''PROJEKT PORZUCONY'''.

Wspomniana wcześniej delikatna część z ASG pękła ponownie.
ASG jest FUBAR.

Ale działało przez kilka minut :)

Ruchoma platforma z silnikami została wykorzystana do nowego projektu - '''[[projekty:nerf_turret|NERF Turret]]'''



=== Hardware ===
* części wyciągnięte ze starych sprzętów: silniki, czujniki przerwania wiązki
* rozebrana replika ASG Scorpion VZ61
* zasilanie TBD (może ATX, może tylko baterie)
* trochę dupereli: śruby, łożyska
* [[sprzet:polimorf|PCL (Polymorph)]]

=== Kod ===
https:''github.com/mamert/iot-b/tree/turret_i2c/turret/turret_move  kontroler silników, i sterowanie joystickiem na długim kablu


