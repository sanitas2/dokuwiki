= System inwentaryzacji =
{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz|mroz]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|FIXME  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>projekty:stoi}}|
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Tagi|{{tag>projekt serwis usługa}}|
|-
| 
|-
|}

Do inwentaryzacji wykorzystujemy aplikację PyInwentaryzator dostępną pod adresem: https:''github.com/hs3city/PyInwentaryzator/tree/minimal-prototype (zwróc uwagę na branch minimal-prototype). Jest to Skrypt w pythonie ułatwiający tworzenie bazy danych przedmiotów, w które każdy przedmiot ma nazwę, identyfikator, listę tagów, oznaczenie lokalizacji oraz zdjęcie.

Konfiguracja i uruchomienie aplikacji są opisane w pliku README.md w repozytorium projektu : https:''github.com/hs3city/PyInwentaryzator/blob/minimal-prototype/README.md .

== Procedura inwentaryzacji ==
Przed rozpoczęciem inwentaryzacji należy zawsze pobrać najnowszą wersję programu z podanego wyżej odnośnika (Clone or download -> Download zip). W ten sposób mamy pewność, że baza danych na której pracujemy jest aktualna. Dodatkowo upewnij się że masz pod ręką niezbędne materiały: naklejki do oznaczania typu przedmiotu (prywatny, infrastruktura itd.), mazak do płyt, biała taśma izolacyjna.
{{ :projekty:img_20171209_114947.jpg?nolink&400 |}}

Zanim zaczniesz inwentaryzować przedmioty, musisz dodać listę miejsc, w których są przechowywane przedmioty.

Aby dokonać zinwentaryzowania przedmiotu należy:

# Umieścić przedmiot w polu widzenia kamery.
# Wcisnąć [ENTER] - spowoduje to natychmiastowe zrobienie zdjęcia.
# Po zrobieniu zdjęcia program poda Ci identyfikator urządzenia "Provide data for item id: '<id>'" - będzie to czterocyfrowa liczba hexadecymalna.
# Na przedmiot, w miejscu widocznym, najlepiej na froncie, przyklej ~3 cm. odcinek białej taśmy izolacyjnej.
# Na taśmie napisz identyfikator urządzenia, podkreśl go. Jeśli to przedmiot prywatny, albo będący częścią infrastruktury, przyklej kropkę odpowiedniego koloru. Przykład oznaczenia:{{ :projekty:img_20171209_114248.jpg?nolink&400 |}}
# Wpisz nazwę przedmiotu. Staraj się być konkretny, jeśli to możliwe podaj nazwę producenta i dokładne oznaczenie modelu.
# Zostanie zaprezentowana lista dostępnych lokalizacji. Wybierz tą, w której przechowywany jest przedmiot ( 1: regał czerwony) poprzez wpisanie odpowiedniej liczby, zaakceptuj wybór enterem.
# Wpisz listę tagów związanych z przedmiotem oddzielonych przecinkami. Staraj się być szczegółowy - podaj typ przedmiotu, jego cechy charakterystyczne (np. 5V dla urządzeń zasilanych napięciem 5V), oraz jeśli to potrzebne dodaj tagi specjalne (lista niżej).
# Na przedmiot przyklej odcinek białej taśmy
# Dla każdego następnego przedmiotu powtórz całą procedurę.

Po skończonej pracy, spakuj folde "data" i wyślij do Krzysztof Mróz - przez slacka: @mroz, albo przez email: private [małpa] mrozo.pl

== Tagi specjalne ==
* priv:<login> - służy do oznaczania własności prywatnej oraz jej właściciela, np. "priv:mroz" oznacza że przedmiot jest własnością użytkownika "mroz"
* infrastruktura - przedmioty oznaczone tym tagiem nie mogą być modyfikowane, wynoszone, ani w ogóle dotykane. Są to przedmioty niezbędne do działania HS.