== Włącznik zasilania na RFID 13.56MHz ==
{| class="wikitable sortable" border=1
!Zamieszany|[[user>yazjack]]|
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2017-09-11  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>zakonczony}}  |
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
=== Założenia ===
Kładziesz kartę - jest prund, nie ma karty - nie ma prundu.
=== Iteracje ===
==== Iteracja I ====
Setup podziałał z tydzień, potem zaczął wydziwiać i coraz gorzej łapać kartę. Prawdopodobnie wykończyła się karta albo czytnik.
==== Iteracja II ====
==== Iteracja III ====

== Wykonanie ==
=== Hardware ===
* Czytnik RFID MFRC522
* Arduino NANO
* Step down
* Przekaźnik
* Płytka stykowa
* Sklejka
=== Kod ===
==== Kod na MRF520 ====
<code cpp>
#include <SPI.h>
#include <MFRC522.h>

#define RST_PIN 9 ''reset czytnika
#define SW 8 ''pin przekaźnika
MFRC522 mfrc522(10); ''pin czytnika, odwołanie do biblioteki

void setup() {
  Serial.begin(9600);
  SPI.begin();
  mfrc522.PCD_Init();
  pinMode(SW, OUTPUT); 
  digitalWrite(SW, HIGH);
}

void loop() {
  if ( !mfrc522.PICC_IsNewCardPresent()) { ''jeśli karta nie jest obecna
    delay(100); '' sprawdzamy czy karta jest obecna
    if (mfrc522.PICC_IsNewCardPresent()) { '' jeśli jest obecna,
      digitalWrite(SW, LOW); '' uruchamiamy przekaźnik
      ''Serial.println("on");
    } else {
      digitalWrite(SW, HIGH); ''a jeśli nie jest, to nie uruchamiamy (duh)
      ''Serial.println("off");
    }
  }
}
</code>
=== Kosztorys ===
Zbudowane z zasobów własnych i HS
=== Worklog ===
* 2017-12-17 działająca wersja

== Możliwości rozwoju projektu ==