== Stół warsztatowy do elektroniki ==
{| class="wikitable sortable" border=1
!Zamieszany|[[user>yazjack]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2017-10-24  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>stoi}}  |
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
=== Założenia ===

Blat składa się z 2 płyt OSB o wymiarach 100x170cm i grubości 22mm każda, dolna płyta jest przykręcona do stalowego stelaża zabezpieczonego farbo antykorozyjną, górna jest przykręcona do dolnej. Pozwala to na niezależne odkręcenie górnej płyty i uzyskanie dostępu do kanałów na elektrykę i elektronikę wyfrezowanych w dolnej płycie. Kanałami zostaną poprowadzone przewody zasilające, które będą rozprowadzać zasilanie do listew na blacie oraz zapewniają zasilanie dla przetwornika AC/DC na potrzeby elektroniki.

Planowana elektryka będzie stanowić system zasilania dla urządzeń na stole. System będzie składać się z czterech listew na segmenty w systemie k45:
*  2 segmentowa listwa na główny przełącznik i zabezpieczenie różnicowo-prądowe
*  5 segmentowa listwa zasilania (3 gniazda Schotky, 2 z bolcem, bezpiecznik ES)
*  5 segmentowa listwa multimedialna (3 zasilacze USB 5V, media (RJ, HDMI, USB), bezpiecznik ES)
*  9 segmentowa listwa zasilania (5 gniazda Schotky, 4 z bolcem, bezpiecznik ES)
Wszystkie listwy będą zasilane przez najkrótszą listwę.
Dodatkowo planujemy odcinanie zasilania do całego systemu za pomocą przekaźnika sterowanego kartą RFID, ta sama karta będzie konieczna do opuszczenia warsztatu, co gwarantuje nam oszczędzanie energii i sprzętu w przypadku kiedy ktoś pracujący przy stole udaje się na bio- lub social-przerwę.

{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/c32162e41167f76da449a543261c4c65/bloki.jpg?1000}}

=== Iteracje ===
==== Iteracja I ====

{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/d4d968e10f4719980804d558ad06b168/stol_rysunek.jpg?1000}}

Z początku planowaliśmy niewielki stół (160x80cm) ze sklejki, osadzony na 4 przykręcanych nóżkach. 

==== Iteracja II ====

Pole robocze stołu zmniejszy nam się drastycznie gdy umieścimy na nim narzędzia. Większość zasilaczy, oscyloskopów, stacji lutowniczych ma +- 30cm głębokości. Postanowiliśmy zwiększyć wymiary do 100cm na głębokość i 170cm na szerokość (z uwagi na szerokość wnęki w lokalu). To była dobra decyzja. Po wrzuceniu wszystkich narzędzi na stół pozostaje zacna ilość miejsca do pracy.
Druga weryfikacja projektu dotyczyła podstawy stołu. Po szybkim podliczeniu różnica w cenie między zakupem przykręcanych nóżek a zrobieniem porządnego stelażu profili stalowych okazała się na tyle niewielka, że zdecydowaliśmy się na stal. Mamert przyszedł z pomocą ze swoją spawarką i udało nam się sklecić z grubsza solidną konstrukcję. Dodatkowo wsparliśmy tył stołu dodatkową nogą (największe obciążenie sprzętem jest w tylnej części). Na koniec pomalowaliśmy profile Hammeritem, żeby zabezpieczyć metal przed korozją i pozbyć się problemu brudzącej zendry.
Trzecia zmiana dotyczyła materiału blatu. Sklejka jest dość droga i przy tych wymiarach stanowiła spory wydatek. Zamieniliśmy więc sklejkę na płytę OSB. Można dostać ataku padaczki patrząc na rysunek drewna, ale będziemy kombinować jakąś jednolitą powierzchnię z płyty HDF lub przemalujemy stół przemysłową żywicą. Dodatkowo, ze względu na to, że stół ciasno wpasowuje się między ściany, zdecydowaliśmy się na użycie pozostałych po docięciu formatek płyt do zrobienia wysokich na ok 30cm ścianek z trzech stron stołu, (dzięki temu nie zniszczymy ścian) a do drewna zamocowaliśmy ramki, na których wieszamy narzędzia ręczne i przybory do lutowania.

TL;DR:

*  Zmiana wymiarów z 160x80cm do 170x100cm
*  Zamiana materiału ze sklejki na płytę OSB
*  Zamiana gównonóżek na spawany stelaż z czarnej stali
*  Dodane ścianki na narzędzia i do ochrony ścian
*  Dodane tymczasowe stanowisko na imadła
*  Wieszaki na narzędzia ręczne
*  Zmiana lokalizacji listew zasilających ze względu na ścianki

== Wykonanie ==
=== Hardware ===

Zaczęliśmy od cięcia profili, z początku wyrzynarką z szablą do metalu (bardzo słabe zastosowanie, ale nie było na ten czas nic lepszego), potem na szczęście udało się zorganizować szlifierkę i tarczami korundowymi poszło nieporównywalnie szybciej, łatwiej i dokładniej. Profile tworzące ramy poziome łączą się ze sobą pod kątem 45st, te kąty były zaznaczane na podstawie pomiarów odległości i wyszły zaskakująco dobrze.

{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/2498523c21c38c4e20512dc14b7b4d3e/IMG_20171028_230440.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/5993994ab3e83af07508629e22d89e2a/IMG_20171028_231149.jpg?400}}

W następnym kroku męczyliśmy się ze spawaniem. Spawaliśmy MMA z elektrodami rutylowymi 2mm. Było dość zabawnie bo oprócz tego, że się uczyliśmy spawania metodą prób i błędów, to miało nam z tego wyjść coś działającego. W pierwszym rzucie pospawaliśmy ramę pod blatem i 5 nóg. Nawypalaliśmy sporo dziur i lwia część czasu zeszła na ich łatanie. Większość pozostałego czasu poświęciliśmy na odpowiednie ustawianie spawarki i uziemianie. Spawania było najmniej.

{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/78ec89844099a1b22b823989706d7a74/IMG_20171029_211104.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/14af36b309b2ce2b7113f10c2a0a3321/IMG_20171029_232857.jpg?400}}

Kolejny dzień pracy poświęciłem na dospawanie dolnej ramy. Poszło znacznie sprawniej. W międzyczasie sporo się naczytałem i obejrzałem kilka godzin materiału z nauką spawania. Najbardziej przydatny trick: przy spawaniu cienkiej stali trzeba dłużej trzymać elektrodę na zagięciu profilu a o cięty brzeg zahaczać tylko na chwilę. Sporo też zmieniła zakupiona w międzyczasie przyłbica ze szkłem LCD. Spawa się w czymś takim bez porównania lepiej. Po odczyszczeniu i przeszlifowaniu spawów oraz nawierceniu otworów do montażu blatu pomalowałem ramę Hammerite (żeby nie brudziło przy każdym dotknięciu i nie rdzewiało).

{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/9374027bf491aeba516d346bab840902/IMG_20171102_202745.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/c96526ee6c749cea99395ea7ffdf4011/IMG_20171102_205746.jpg?400}}

Kolejnym krokiem było frezowanie kanałów pod montaż elektryki w dolnej części blatu. Tu okazało się, że nasza rama nie do końca trzyma kąty, jest "kopnięta" o jakieś 5mm. W naszej sytuacji to na szczęście nie jest duży problem, technicznie wszystko jest ok i stół wchodzi we wnękę. W retrospektywie, można było przed zespawaniem przykręcić profile do blatu. Od razu zamontowałem też pod blatem zasilacz do elektroniki.

{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/a37ded9f0e19c8259cce25033a1d1c8a/IMG_20171104_122706.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/f93937fcccdd9e4a2241518b4e1447ea/IMG_20171104_115211.jpg?400}}

Kolejna rozbudowa polegała na umieszczeniu dwóch płytkich (12mm) szuflad w grubości spodniego blatu. Takie rozwiązanie ma mieć zastosowanie jako "niegubka". Podczas pracy można w niej umieszczać drobne elementy bez ryzyka ich utraty lub przezimować sobie jakiś kompaktowy projekt.

{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/20ad8baeeac1ba31d1635288c6e33a7e/IMG_20180113_205129.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/71426f51313d6c2e05391ee37b3bf3f7/IMG_20180113_205123.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/f6da2aa49c7b1b28b5597c2c4b802e9b/IMG_20180113_213403.jpg?400}}
{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/dacfd0b949cdfa5871a53af6a0a3b7e4/IMG_20180113_213413.jpg?400}}

<del>A to nasze dzieło w pełnej krasie (prawie pełnej, nie mamy jeszcze elektryki i wszystko działa na tfu! listwach). Zaraz po wpasowaniu stołu we wnękę, stwierdziłem, że muszą być boczne ścianki bo raz, żeby nie spadały rzeczy ze stołu, dwa żeby nie zniszczyć ścian, trzy, żeby dało się zamontować uchwyty na narzędzia. Zamontowałem też prowizoryczną płytę OSB z prawej strony, żeby przykręcić do niej imadła puki nie mamy osobnego stołu do majsterkowania.</del>

{{https:''trello-attachments.s3.amazonaws.com/59c2826f16bbb5ef6bb104bb/59e9b1be6ae28a98afed3b42/b0b30c50b5b30d88395b13469d0ab483/IMG_20171105_015317.jpg?800}}

Tworzenie stołu zbliża się ku końcowi, zamontowałem elektrykę od Kontakt-Simon oraz szybki prototyp uruchamiania zasilania kartami RFID. Na tą chwilę niestety inny standard kart niż docelowe, ale na poczekaniu nie udało mi się zmusić właściwego czytnika do wykrycia ciągłości w obecności karty. Sądząc po rudymentarnej specyfikacji układu czytnika i nieudanej próbie poradzenia sobie z problemem poprzez resetowanie układu, prawdopodobnie skończymy na fizycznym wykrywaniu obecności karty za pomocą czujnika odległości lub sprawdzaniu ciągłości wiązki lasera. Łatwe do obejścia, ale powinno wystarczyć w połączeniu z kontrolą dostępu do pomieszczeń.

{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/59e9b1be6ae28a98afed3b42/1f2f356a26cab054b56d3cc44e1a5271/IMG_20180128_133524.jpg?800}}


=== Kod ===
==== Włącznik RFID ====
=== Kosztorys ===

Jak na razie koszt stołu to ok 550PLN ze środków członków, do tego dojdzie morze kasy pod postacią rozwiązań elektrycznych od sponsora.
*  350PLN na zakup płyt OSB i profili stalowch (yazjack 150, Paweł 50, Maciek 100, Leszek 30, Michał 50, Olgierd (?)
*  150PLN na zakup farby, tarcz do szlifierki, śrub, elektrod, gogli spawalniczych (yazjack)
*  45PLN na brakujący profil i baterie do maski spawalniczej (4fuss)
*  20PLN dwie pary prowadnic do szuflad (yazjack)
oraz użyczony sprzęt:
*  spawarka z osprzętem od Mamerta
*  szlifierka kątowa od Andrzeja
*  maska, kątownik magnetyczny, rękawice, elektronarzędzia od yazjacka

=== Worklog ===

* 24.10.17 - zbiórka kasy
* 28.10.17 - zakup i transport części, przygotowanie do spawania (mw, olo, yazjack)
* 29.10.17 - pierwszy etap spawania (mamert, yazjack)
* 01.11.17 - dokupienie farb, tarcz do szlifierki, pędzli, śrub itp. (yazjack)
* 02.11.17 - dokupienie brakującego profilu i baterii do maski spawalniczej, drugi etap spawania, pierwsze malowanie (4fuss (kupił i przywiózł ), yazjack)
* 04.11.17 - drugie malowanie, rowkowanie warstwy blatu pod elektrykę i elektronikę, montaż zasilacza DC (24V, 6A), montaż blatu (yazjack)
* 05.11.17 - montaż pionowych ścianek, wieszaków na narzędzia, wyposażenie (yazjack)
* 22.11.17 - Jakub zabezpieczył krawędzie woskiem
* 13.01.18 - 2 szuflady "niegubki", ewentualnie do przerobienia na przyborniki (yazjack)
* 28.01.18 - montaż elektryki od Kontakt-Simon
== TODO ==
*  Projekt i wykonanie głównego włącznika zasilania za pomocą RFID
*  Pochłaniacz. W miarę możliwości po taniości/ze śmieci.
*  Załatwić matę, żeby nie niszczyć stołu
*  Zintegrować ze stołem zasilacz do płytek prototypowych z 4 liniami napięcia (regulowanymi) i wyświetlaniem podstawowego info (V, U, P) dla każdej linii. Najprawdopodobniej w wysuwanej "szufladzie" w dolnej warstwie blatu.
*  Wyłożenie zewnętrznej warstwy stołu sklejką, HDF albo przemalowanie żywicą żeby nie dostawać ataków padaczki od patrzenia na OSB