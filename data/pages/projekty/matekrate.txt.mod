= Matekrate =
Aka. znaleźny matelight


{| class="wikitable sortable" border=1
!Zamieszany|[[user>allgreed]], [[user>yasiu]] , [[user>critbit95]] |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-04-16  |
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

Matekrate to internetowy wyświetlacz zrobiony ze skrzynki, butelek po mate, łańcucha ledowego i esp8266

Można na nim wyświetlać obrazki przy pomocy protokołu [[https:''www.noisebridge.net/wiki/Flaschen_Taschen#Network_protocol_and_Utilities_to_send_content| flaschentaschen]]

Adres IEEE matekrate: 

''ec:fa:bc:28:4a:77'' - Orygnialne matekrate od HS Waw.

''5C:CF:7F:87:DD:00'' - 'Lewe' matekrate

''38:2b:78:03:ff:50'' - 'Prawe' matekrate


Port: ''1337''

Celem projektu jest:
* <del>Odpalenie jakkolwiek zestawu w HS3</del>
* <del>Ogarnięcie i przeflashowanie firmware'u, coby nie musieć robić dziwnych hacków z siecią</del>
* Przepisanie firmware'u w Ruście
* <del>Zrobienie snake'a na matekrate</del>
* Zrobienie wizualizatora muzyki na matekrate
== Jak znaleźć IP matekrate? ==

Z racji, że matekrate łączy się po wifi i adres może się zmienić polecam wysłać parkiet ARP, żeby rozwiązać adres sprzętowy do adresu fizycznego (np. przy pomocy narzędzia ''arp-scan''):

''<nowiki>sudo arp-scan -I [interfejs sieciowy przyłączony do sieci Hsowej] -l --destaddr [adres IEEE matekrate]</nowiki>''

czyli jeżeli mój interfejs nazywa się ''wlp3s0'' będzie to:

''<nowiki>sudo arp-scan -I wlp3s0 -l --destaddr 38:2b:78:03:ff:50</nowiki>''

== Jak wyświetlić coś na Matekrate? ==

Przykładowy pythonowy kod gry w Snake'a znajdziesz tutaj: 
https:''github.com/yasiupl/flashensnake/blob/master/snake.py

Generalnie idea polega na wysyłaniu pakietów [[https:''en.wikipedia.org/wiki/User_Datagram_Protocol|UDP]] na port 1337 z opisem grafiki w formacie [[https:''en.wikipedia.org/wiki/Netpbm_format|PPM]] która ma się wyświetlić na ekranie.

== Jak działa Matekrate? ==

Kod chodzący na esp8266 można znaleźć tutaj: 
https:''github.com/yasiupl/flashentashen/blob/master/flashentashen.ino

<alert>FIXME refaktor tego kodu + dopisanie funkcji bezpieczeństwa kiedy format nie jest prawidłowy. [Na razie działa kiedy ma działać xD]</alert>

Przyjmuje on pakiety PPM, zmienia system koordynat i wyświetla na łańcuchu LED w skrzynce.

Łańcuch LED to ''50pcs 12mm WS2812 2811 IC RGB pixel LED string DC 5V 12V IP68 waterproofChristmas / holiday Outdoor lighting lights string'' [[https:''www.aliexpress.com/item/4000273817508.html|(link do ali)]] korzystający z kontrolera WS28''' przy każdej diodzie.

== Worklog ==

* Matekrate został zrobione na Cebulakampie przy udziale mroza, infa, not7cd, moim i paru jeszcze randomów. Za zgodą infa przygarnięte przez HS3, tylko musimy oddać hajs za hw. Deal jest taki, że w firmware wbite są kredki do sieci cebulakampowej, a my nie umiemy into hw, więc zamiast przeflashować jak ludzie to postawiliśmy sieć o takim samym ssid i haśle i złączyliśmy ją z siecią macierzystą HSową xD. Tak, beka z nas. Ale działa :D. O to chyba chodzi w tym całym haxxxowaniu.  --- ''[[user>allgreed]] 2019/04/16 20:11''
* Dorobiono kolejne 2 skrzynki Matekrate. Na razie podpięte pod to samo ESP co stare skrzynki, mirroruje obraz. Oczekuje nowego esp'a z nowym oprogramowaniem (Note to self: dodać fotki z instrukcjami jak dodać kolejne).  --- ''[[user>yasiu]] Jakoś w Czerwcu''
* Stworzenie własnego kodu na ESP8266 --- ''[[user>yasiu]] 2019/11/10 - 2019/11/12''