= Kontrola dostępu RFID do warsztatu =
{| class="wikitable sortable" border=1
!Zamieszany|[[user>yazjack]] [[user>mroz]] [[user>allgreed]]|
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2017-09-11  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>planowany}}  |
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
== Opis projektu ==

Mechanizm kontroli dostępu do drzwi za pomocą RFID

=== Założenia  ====

Potrzebujemy systemu kontroli dostępu do pomieszczenia coowork i warsztatu opartego na kartach RFID. Wybór standardu 125khz podyktowany jest kompatybilnością z istniejącym systemem alarmowym/kontroli dostępu Satel. System musi być możliwie dyskretny, nie możemy ingerować w drzwi ani ściany pomieszczeń. W założeniu jest użycie przekaźników WiFi z rodziny ESP, co pozwoli na weryfikację dostępu do poszczególnych stref z poziomu bazy danych serwera oraz potencjalną możliwość szyfrowania lub wymiany certyfikatów zapisywanych w pamięci karty w celu poprawienia bezpieczeństwa. Dla zabawy, i tak mamy szklane drzwi.

W HS są drzwi i ościeżnice, w które nie możemy za bardzo ingerować. Ogranicza to znacznie wybór rozwiązań technicznych, możliwych do zastosowania w naszym przypadku. Możemy albo 
*  ograniczyć się do gotowych rozwiązań
*  zmodyfikować gotowy system
*  "wyrzucić" cały system kontroli dostępu na zewnątrz
*  zaprojektować coś, co pozwoli nam ukryć ingerencję.
Opcja 4 jest najlepsza bo pozwala nam na pełną kontrolę i nie bije po oczach ani portfelu.

Między futryną a otworem w ścianie jest sporo miejsca, co daje nam możliwość ukrycia systemu korzystając z dostępu przez powiększone światło frezowań ukrytych za blachą czołową na futrynie. Takie podejście pozwala na całkowite ukrycie mechaniki i elektroniki. Problemem było odryglowywanie drzwi, z racji docelowej obecności gałki, nie za bardzo dało się operować elementami mechanicznymi po stronie skrzydła. Rozwiązanie, przynajmniej w teorii przyniosła wkładka magnetyczna, której położenie może zmieniać się pod wpływem pola magnetycznego a nie dużej siły mechanicznej. Jeśli po stronie futryny udałoby się umieścić elektromagnes ze możliwością zmiennej polaryzacji, to dałoby nam to możliwość odryglowywania drzwi.

=== Iteracje ===
==== Iteracja I ====

Jak się okazało po montażu, zapadka nie poddaje się wyłącznie działaniu magnesu po stronie futryny, ale również metalowej płyty czołowej. Skutkuje to zatrzaśnięciem zapadki "by default". Oddziaływanie elektromagnesu od strony futryny nie jest wystarczające do przeciwstawienia się przyciąganiu pomiędzy zapadką a płytą czołową. Oczywistym rozwiązaniem byłoby zastosowanie silniejszego magnesu, nie ma niestety takiej możliwości z uwagi na ograniczone miejsce. Nawet gdyby było, takie rozwiązanie nastręcza problemów związanych z nagrzewaniem cewki w niewielkiej przestrzeni z płyty HDF (i potencjalne spontaniczne ognisko) i konieczności doprowadzenia źródła zasilania (do zrobienia, ale to sporo roboty).

==== Iteracja II ====

Projekt i wydruk ramki bez magnesu, wykorzystujący zatrzaskiwanie się drzwi z punktu powyżej i zastosowanie serwa do otwierania. Ramka dopasowywana przez cięcie na miejscu.

==== Iteracja III ====

Poprawki w ramce i ponowny wydruk umożliwiające wpasowanie w futrynę. Ramka dopasowywana przez cięcie.

==== Iteracja IV ====

Poprawki w ramce i ponowny wydruk w celu lepszego spasowania z zapadką i wpasowania w futrynę. Ramka dopasowywana przez cięcie.

==== Iteracja V ====

Poprawki w ramce i ponowny wydruk w celu lepszego osadzenia serva i usunięcie ostrych rogów z płytki wypychającej zapadkę (blokowała się o elementy wkładki). Płytka dopasowywana przez cięcie.
== Wykonanie ==

WIP

=== Hardware ===
==== Mechanika ====

*  Ramka wydrukowana w 3D
*  Wkładka z zamkiem magnetycznym

==== Elektronika ====

*  Servo
*  Arduino Uno do prototypu
*  ESP 01
*  buzzer
*  czytnik RFID

==== Czytnik 7941e ====

{| class="wikitable sortable" border=1
!      Description:      !!!!
|-
| 7941E card reader module, integrated high performance card reading radio frequency circuit and antenna and users can select Wiegand or UART interface. Rich application support, it supports various cards card reading operation
|-
|}


{| class="wikitable sortable" border=1
!      Features:      !!!!
|-
| 1 || Voltage: DC5V
|-
| 2 || Current: 40mA
|-
| 3 || 125KHz card reading
|-
| 4 || Interface: Wiegand, UART
|-
| 5 || Size: 47*26*5mm
|-
| 6 || Operating Temperature: -20-70 Celsius
|-
| 7 || EM4100 Card Reading Distance: >8cm
|-
|}


{| class="wikitable sortable" border=1
!      Connection Introduction:      !!!!
|-
| 1 || Power: DC5V power supply, choose linearity power can gain better effects
|-
| 2 || D1 DO: Wiegand data output DATA1, DATA0
|-
| 3 || FOR: format selection (hanging meansW26, ground connection means W34)
|-
|}

{| class="wikitable sortable" border=1
!      UART Interface Output      !!!!
|-
| ^Data Head || ^Length || ^Card Type || ^Card ID || ^BCC Check || ^Data End
|-
| 0x02       || 0x09    || 0x01       || SN0~SN3  || XOR Check Except Data Head And Data End || 0x03     
|-
|}


{| class="wikitable sortable" border=1
!      Card Types     !!!!
|-
| ^Code || ^Type             
|-
| 0x02  || EM4100            
|-
| 0x01  || MIFARE 1K         
|-
| 0x03  || MIFARE 4K         
|-
| 0x10  || HID Card          
|-
| 0x11  || T5567             
|-
| 0x20  || 2nd Card          
|-
| 0x21  || ISO14443B         
|-
| 0x22  || FELICA            
|-
| 0x30  || 15693 Label       
|-
| 0x50  || CPU Card          
|-
| 0x51  || Sector Information
|-
| 0xFF  || Keyboard Data     
|-
|}

For example : the data received by serial port tool is 02 0A 02 2E 00 B6 D7 B5 F2 03, then:

* The first byte 0x02 means data start
* The second byte 0x0A means the whole data length is 10 bytes, which includes data start and data end
* The third byte 0x02 means the card type is EM4100
* The fourth to eighth byte (0x2E 0x00 0xB6 0xD7 0xB5) means the read card number, and the fourth byte 0x2E is hidden card number
* The ninth byte 0xF2 means BCC check of second byte to eighth byte
* The tenth byte 0x03 means data end



==== Kod ===

==== Czytnik 7941e ====
Wersja prototypowa kodu na ESP, tagi porównywane z bazą danych na serwerze. Ten czytnik nie ma adresowalnego mikrokontrolera tylko UART, co niestety nie pozwoli nam na wykrywanie obecności karty. Trzeba będzie posiłkować się dodatkowym czujnikiem do wykrywania karty.
<code cpp>

#include <ESP8266WiFi.h>
int serpin=0;''servo pin 
int buzzpin=2;

void setup(){
  Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
  pinMode(serpin, OUTPUT);
  digitalWrite(serpin, LOW);
  pinMode(buzzpin, OUTPUT);
  digitalWrite(buzzpin, HIGH);
}

void loop(){
  while (Serial.available()){
    Serial.println("Oh hi");
    digitalWrite(LED_BUILTIN, LOW);
  }
  digitalWrite(LED_BUILTIN, HIGH);
  for (int i = 0; i <= 50; i++) ''
  {
    pulse(serpin, 180); ''
  }
  digitalWrite(buzzpin, LOW);
  delay(2000);
  digitalWrite(buzzpin, HIGH);
  delay(500);
  for (int i = 0; i <= 50; i++) ''
  {
    pulse(serpin, 20); ''
  }
}

void pulse( int serpin,int angle)
{
  int width;''
  width=(angle*11)+500;''
  digitalWrite(serpin,HIGH);''
  delayMicroseconds(width);''
  digitalWrite(serpin,LOW);''
  delay(20-width/1000);
}
</code>

=== Kosztorys ===

Ileśtam.

=== Worklog ===

* 09.11.2017 - prototyp uruchamiania przekaźnika za pomocą karty RFID 13.56MHz na Atmelu. Mieliśmy akurat te czytniki, robota w sumie na stracenie a oprogramowanie tego nie było łatwe
* 10.11.2017 - zamówienie prawilnych czytników 125kHz (7941e i RDM6300) od majfrendów. Pomiary wkładki.
* 15.11.2017 - zamówienie wkładki magnetycznej do drzwi
* 17.11.2017 - montaż wkładki i dostosowanie ościeżnicy, przy okazji okazało się, że wcale nie potrzebujemy magnesu od strony ościeżnicy. I że pomysł z solenoidem nie wypali.
* 21.11.2017 - zmiana planów na mechanizm wypychający zapadkę servomotorem. Pierwsza iteracja drukowanej ramki na servo i ręczne poprawki. Robione już na układzie 7941e
* 22.11.2017 - druga iteracja ramki i oprogramowanie nowego układu RFID wraz z servo.
* 25.11.2017 - trzecia iteracja ramki.
* 08.12.2017 - podejście do napisania porządnego kodu na ESP, który połączy całą funkcjonalność; zlutowanie obwodu na płytce drukowanej; instalacja anteny i zasilania.
* 09.12.2017 - Skopiowanie układu z płytki stykowej na prototypową lutowaną. Konstrukcja warstwowa indukowała prąd, który był interpretowany jako sygnał przez czytnik. Zanim to zidentyfikowałem, namęczyłem się ze zmianami długości anteny. Dopiero kiedy się poddałem i wyprułem całość z drzwi, okazało się, że sygnał indukuje się nawet kiedy antena nie jest przylutowana. Czyli sygnał indukuje się już na układzie. Czyli na razie zostajemy przy płytce stykowej
* 10.05.2018 - [[user>mroz]] dobrał się do kodu


== Możliwości rozwoju projektu ==
