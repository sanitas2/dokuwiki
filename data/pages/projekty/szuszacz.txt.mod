== Szuszacz ==
{| class="wikitable sortable" border=1
!Zamieszany|[[user>yazjack]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2017-06-15  |
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
!Tagi|{{tag>projekt}}  |
|-
| 
|-
|}
Urządzenie losowo emitujące dźwięk na podstawie odczytów z czujnika PIR.
=== Założenia ===

Mój synek dość niespokojnie śpi, najczęściej wybudza się co jakiś czas i trzeba brać go na ręce, ponownie usypiać itd. To wszystkow  czasie, kiedy kręgosłup odmawiał mi posłuszeństwa. Jedyną opcją było "szuszanie", kiedy słyszał ten dźwięk, uspokajał się i ponownie zasypiał. Są nawet badania, wskazujące na korzystne działanie białego szumu na sen u dzieci. Nie ważne, działało. Z tym mankamentem, że trzeba było obserwować małego, kiedy zaczynał się poruszać we śnie, to był moment na "szuszanie".

Pomysł był dość prosty, zrobić czujkę, która "obserwuje" malucha za mnie i "szusza" w odpowiednim momencie.

=== Iteracje ===
==== Iteracja I ====

Na zdjęciu pierwszy test bojowy. Działało idealnie, drzemki trwały bez przerw. 10/10, używam do tej pory.
Efekty uboczne - straszy [[user>mroz]] ;P

{{https:''trello-attachments.s3.amazonaws.com/5a156db2be9d8433cfe1eaaa/5a1e9c9965016cd49e972e71/7784e26863b65249e9157f23b065e324/IMG_20170615_152405.jpg?400}}

== Wykonanie ==

Zaczęło się i skończyło na prototypie na płytce. Bo działało i wystarczyło. Za układ starujący posłużyło Arduino Nano, za odtwarzanie dźwięku DFPlayer z głośnikiem, za wykrywanie ruchu i dźwięku czujnik PIR i mikrofon. Arduino przyjmowało sygnał z PIR i odtwarzało losowo cykl pięciu z dziesięciu czterosekundowych nagrań. Takie rozwiązanie pozwalało na odtworzenie dość naturalnego, niepowtarzalnego "szuszania". Mikrofon miał wykrywać płacz i zwiększać głośność, ewentualnie dawać znać do odbiornika przez wifi, ale nie oddalam się nigdy na tyle, żeby było to konieczne.

=== Hardware ===

* Arduino Nano
* DFPlayer
* zasilacz do płytek prototypowych
* czujnik PIR
* mikrofon

=== Kod ===

<code cpp>

#include "Arduino.h"
#include "SoftwareSerial.h"
#include "DFRobotDFPlayerMini.h"

int pirPin = 2;
int readPir;
int randNumber;
int redLed = 3;
int greenLed = 4;
int blueLed = 5;
int x;
int micPin = A0;

SoftwareSerial mySoftwareSerial(10, 11); '' RX, TX
DFRobotDFPlayerMini myDFPlayer;

void printDetail(uint8_t type, int value);

void redOn(){
  digitalWrite(redLed, LOW);
  digitalWrite(greenLed, HIGH);
  digitalWrite(blueLed, HIGH);
}

void greenOn(){
  digitalWrite(redLed, HIGH);
  digitalWrite(greenLed, LOW);
  digitalWrite(blueLed, HIGH);
}

void blueOn(){
  digitalWrite(redLed, HIGH);
  digitalWrite(greenLed, HIGH);
  digitalWrite(blueLed, LOW);
}

void allOff(){
  digitalWrite(redLed, HIGH);
  digitalWrite(greenLed, HIGH);
  digitalWrite(blueLed, HIGH);
}
void setup()
{
  mySoftwareSerial.begin(9600);
  Serial.begin(115200);
  pinMode(redLed, OUTPUT);
  digitalWrite(redLed, HIGH);
  pinMode(greenLed, OUTPUT);
  digitalWrite(greenLed, HIGH);
  pinMode(blueLed, OUTPUT);
  digitalWrite(blueLed, HIGH);
  pinMode(pirPin, INPUT);
  pinMode(micPin, INPUT);
  randomSeed(analogRead(0));
  Serial.println();
  Serial.println(F("DFRobot DFPlayer Mini Demo"));
  Serial.println(F("Initializing DFPlayer ... (May take 3~5 seconds)"));
  
  if (!myDFPlayer.begin(mySoftwareSerial)) {  ''Use softwareSerial to communicate with mp3.
    Serial.println(F("Unable to begin:"));
    Serial.println(F("1.Please recheck the connection!"));
    Serial.println(F("2.Please insert the SD card!"));
    while(true);
  }
  Serial.println(F("DFPlayer Mini online."));
  myDFPlayer.volume(15);  ''Set volume value. From 0 to 30
  
  for (x=1; x < 40; x++){
   blueOn();
   delay(500);
   allOff();
   delay(500);
  }
}

void loop()
{
  readPir = digitalRead(pirPin);
  if (readPir == HIGH) {
    redOn();
    randNumber = random(1,9);
    ''Serial.println("Motion!");
    ''Serial.println(randNumber);
    myDFPlayer.play(randNumber);
    delay(4000);
    allOff();
  } else {
    greenOn();
    ''myDFPlayer.pause();
    ''Serial.println("no motion");
    delay(1000);
    allOff();
  }
}

</code>

=== Kosztorys ===


=== Worklog ===

* 15.06.2017 - testy i zakończenie prac

== Możliwości rozwoju projektu ==
* obudowa i proste UI
* czujnik mikrofalowy zamiast/oraz PIR
* dodanie funkcjonalności "niani" po WiFi z jakimś odbiornikiem na bazie sygnału z czujnika ruchu i mikrofonu
* wyjście na zewnętrzny głośnik
* apka na telefon z IU do nagrywania sampli; zamiast DFPlayera

