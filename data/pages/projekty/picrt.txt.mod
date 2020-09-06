{{ :projekty:86729470_536466050557416_7753280967103479808_n.jpg?150|}}

= PiCRT =

{| class="wikitable sortable" border=1
!Zamieszany| v1.0: [[user>critbit95]] |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2020-01-01  |
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

=== CO ===
<code>
I have a Pi, I have a CRT, PiCRT
I have a Pi, I have a Wheel, PiWheel
PiCRT, PiWheel.
Pi_Wheel_CRT_Pi.
</code>

=== Status ===

* Pi zostało przytaśmowane do kierownicy
* Kierownica działa, ale słabo - trzeba wymienić potencjometr. 
* Potencjometr zamówiony z Ali: https:''www.aliexpress.com/item/32999369655.html - idzie.
* Pi jest podłączone do CRT. Domyślnie startuje demonix wyświetlający obrazki z folderu ~/images (slides.service)
* Potestowałem MQTT - wygląda na to że może broadcastować w sieć stan kierownicy conajmniej 10x/sek

Wyświetlanie slajdów:
  fim -a -d /dev/fb0 /home/pi/images/* -c 'while(1){display;sleep "30";next;}'

Test kierownicy:
<code>
import signal
from xbox360controller import Xbox360Controller


def on_button_pressed(button):
    print('Button {0} was pressed'.format(button.name))


def on_button_released(button):
    print('Button {0} was released'.format(button.name))


def on_axis_moved(axis):
    print('Axis {0} moved to {1} {2}'.format(axis.name, axis.x, axis.y))

try:
    with Xbox360Controller(0, axis_threshold=0.2) as controller:
        # Button A events
        controller.button_a.when_pressed = on_button_pressed
        controller.button_a.when_released = on_button_released

        # Left and right axis move event
        controller.axis_l.when_moved = on_axis_moved
        controller.axis_r.when_moved = on_axis_moved

        signal.pause()
except KeyboardInterrupt:
    pass
</code>
Test MQTT spamu:
<code>
from time import gmtime, strftime, sleep
import paho.mqtt.client as mqtt

client = mqtt.Client()
client.connect("10.14.10.82",1883)

cnt = 0

while True:
	client.publish("test",str(cnt) + " " + strftime("%H:%M:%S", gmtime()))
	sleep(0.1)
	cnt+=1
</code>
