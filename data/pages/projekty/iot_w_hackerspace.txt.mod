= Iot w hackerspace =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mirek]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2019-10-17  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>Planowany}}|
|-
| 
|-
|}

=== Założenia ===

W HackerSpace panuje zasada, że ostatni gasi światło i wyłącza niepotrzebne urządzenia… A co gdyby zrzucić tą odpowiedzialność na system automatyki domowej? 
Chcieliśmy kontynuować projekt rozpoczęty w ramach Sierpnia Open Source 2019 i organizować regularne spotkanie, gdzie będziemy pracować nad systemem „inteligentnego domu”.


=== Iteracje ===

== Wykonanie ==

=== Hardware ===

# Raspberry PI 3 B+
# Arduino pro mini (klon)
# czujnik wilgotności DHT11
# czujnik ruchu PIR
# RaZberry (kontroler z-wave, < 3.0.0)
# RF-nano

=== Kod ===

=== Kosztorys ===

=== Worklog ===

=== #ciekawe_przydatne ===
==== komponenty ====
===== RaZberry =====

{{ :projekty:razberry-01-800x5331.jpg?nolink&400 |}}

Mamy RaZberry (kontroler z-wave), które jest podpięte do UARTa Raspberry PI 3 na którym chodzi domoticz. W Raspberry 3 [[https:''www.raspberrypi.org/documentation/configuration/uart.md|UART]] domyślnie jest używany przez moduł Bluetooth i dlatego, żeby RaZberry działało, trzeba włączyć overlay ''[[https:''github.com/raspberrypi/linux/blob/rpi-4.11.y/arch/arm/boot/dts/overlays/pi3-miniuart-bt-overlay.dts|pi3-miniuart-bt]]'' i (zgodnie z dokumentacją overlaya) włączyć ''core_freq=250'' w ''/boot/config.txt''.

Dodatkowo trzeba wyłączyć konsolę szeregową samego linuxa (albo przekierować ją na inny port, pewnie ''serial1'' by zadziałało). Póki co jest wyłączona przez usunięcie ''console=serial0,115200'' w ''/boot/cmdline.txt''.

{{ :projekty:razberry500_qsg_en1.pdf | Szczątkowa dokumentacja}}

===== RF-nano =====
[[https:''alitronik.com/rf-nano/|RF-nano]] to Arduino Nano V3.0 z wbudowanym NRF24L01 2.4G. Jest trochę [[https:''github.com/keywish/keywish-nano-plus|dokumentacji]], ale żeby używać tego z MySensors trzeba zmienić definicje pinów

<code c>
'' Adjust for rf-nano
#define MY_RF24_CE_PIN 10
#define MY_RF24_CS_PIN 9
</code>

== TODO ==
* Zabezpieczenie Shelly
* Autentykacja dla Mosquitto
* Włączanie pioruna jeśli ktoś jest w HS (api whois)
* Montaż RPI i bramek na szynie DIN