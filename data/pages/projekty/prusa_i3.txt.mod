= Prusa i3 mk2 - Zombie=

{| class="wikitable sortable" border=1
!Zamieszany|[[user>not7cd]] [[user>mirek]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-09-08  |
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
!Tagi|{{tag>projekt hardware}}  |
|-
| 
|-
|}

Celem projektu jest zbudowanie drukarki 3d o polu roboczym 200x200x180mm
Z części znalezionych w HackerSpace oraz podarowanych części ramy złożyliśmy pełnoprawnego klona Prusy i3 MK2 (extruder wraz z bed'em).
Pierwsza próba złożenia Prusy odkryła szereg wymaganych usprawnień wymaganych do osiągnięcia wydruków akceptowalnej jakości i tak narodził się pomysł oparcia projektu o tutorial Thomasa Sanladerera dostępnego na YT ([[https:''www.youtube.com/watch?v=_NSxGRMPjOA|Building the cheapest possible Prusa i3 MK2 clone]] z opisem projektu [[https:''toms3d.org/2017/02/23/building-cheapest-possible-prusa-i3-mk2/|na tej stronie]].
W lipcu 2019 drukarka przeszła szereg modyfikacji w celu zwiększenia prędkości wydruków (z 60mm/s do 90mm/s) oraz poprawy ich jakości.
Przeprowadzone modyfikacje:
* wymianę obecnej ramy z mdf’u na sklejkę 10mm
* montaż obudowy na elektronikę
* wymianę osi z – wymiana elementów drukowanych oraz zastosowanie śruby trapezowej wraz z prowadzeniem na łożyskach
* wymiana extrudera 

Sporym usprawnieniem był montaż dwóch sterowników silników krokowych TMC2208.

{{:projekty:a051cf8d-9162-4f03-8a87-219a88995ced_1_201_a.jpeg?400|}}

{{ :projekty:prusa.jpg?400|}}

{{:projekty:img_20190116_202022.jpg?400|}}

{{:projekty:img_20190117_214118.jpg?400|}}

{{:projekty:img_20190124_212613.jpg?400|}}



== Worklog ==

[[projekty: Prusa i3 IronMan]]

01.12.2018
* Rozkręcona totalnie, znalazło się sporo części.
* Pręt M8 do osi X kupione
* Dociąć gładkie pręty do MK2
* Elementy potrzebne do złożenia wrzucone do zielonego pudełka
16.01.2019
* Rozpoczęcie składania ramy
* Docięcie prętów dla osi x oraz y
17.01.2019
* Zamontowanie silnika osi y
* Zamontowanie paska osi y
* Montaż mocowania hot bed'a
24.01.2019
* Składanie osi Z
* Założenie silników osi Z
26.01.2019
* Złożenie ramy drukarki
* Rozpoczęcie montażu extrudera
27.01.2019
* Zamontowanie Arduino do ramy
* Dokręcenie zasilacza do ramy
* Zarobienie końcówek kabli silników oraz end stopów
* Zamówienie nowego extrudera oraz wentylatorów
03.02.2019
* Zakończenie złożenia extrudera
15.02.2019
* Obrobienie końcówek kablowych 
* Podpięcie elektroniki oraz zasilacza
* Pierwsze uruchomienie bez oprogramowania
19.02.2019
* Wgranie oprogramowania (Marlin v1.1)  

....
03.05.2019
* Podłączenie RPI z Octoprint i pierwszy wydruk przez WWW.
07.05.2019
* Zmiana gardzieli głowicy w extruderze - poprzednia powodowała blokowanie się filamentu
* Zmiana czujnika indukcyjnego na CONTRINEX DW-AD-513-M8 - posiada większy dystans działania (6mm) co niweluje haczenie o wydruk podczas pracy
....
08.06.2019
* Zamontowanie podstawy pod drukarkę ze sklejki o grubości 12mm w celu usztywnienia ramy

== TODO ==

* <del>Zamontować hot bed w poprawny sposób oraz przykleić podkładkę adhezyjną (jest już zamówiona)</del> - Zrobione
* <del>Wydrukować nowe części dla osi z (zmiana standardowych gwintowanych prętów na śruby trapezowe)</del>
* <del>Wydrukować zaczepy oraz obudowę dla wyświetlacza LCD</del>
* <del>Wydrukować obudowę dla elektroniki (RepRap oraz arduino)</del>
* Wydrukować obudowę na zaciski zasilacza oraz zamontować wtyczkę z włącznikiem napięcia i przekaźnikiem
* <del>Zamienić przekaźnik hot bed'a na przekaźnik SSR</del> - zwykły przekaźnik zadziałał
* <del>Wyciąć ramę z bardziej sztywnego materiału (obecna rama wykonana jest z mdf'u, który nie lubi wilgoci)</del>
* <del>Dokończyć kalibrację drukarki (temperatura extrudera oraz hot bed'a)</del>
* <del>Sprawdzić czy zadziała zdalne drukowanie przez https:''octoprint.org/</del> - Zrobione
* <del>Zamontować i skonfigurować ledy WS2812</del>
* <del>Skonfigurować Octoprint do zdalnego wyłączania drukarki</del>
* Cable management
* Wyniana sterowników silników na TMC2208 dla osi Z i extrudera
* Zakup i montaż heat bed MK53 - obecny stół MK3 nie jest równy
* Wgranie wersji Marlina 2.0.4

