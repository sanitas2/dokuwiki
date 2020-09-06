== HP LaserJet P1102 ==
{{tag>sprzęt}}
----
Czarno-Biała, dobra jakość wydruku, okazjonalne paski po lewej i prawej stronie wydruku, prawdopodobnie robione przez zanieczyszczone tonerem rolki.

=== Instalacja sterowników na Windowsie: ===
# Zacznij z drukarką włączoną do sieci, ale odpiętą od komputera.
# Pobierz plik ze strony HP: https:''support.hp.com/us-en/drivers/selfservice/closure/hp-laserjet-pro-p1102-printer-series/4110394/model/411030
# Miej nadzieję że nie ma niezałatanych 0-day'ów.
# Otwórz plik, instalator zostanie wypakowany w losowe miejsce w twoim systemie (domyślnie C:\LJP1100_P1560_P1600_Full_Solution, ale program cię o tym nie poinformuje).
# Otwórz HpSetup.exe.
# Instalacja Niestandardowa.
# EULA tak, "Program zadowolenia klientów HP" NIE.
# Wepnij drukarkę kiedy instalator cię o to poprosi.
# Voile, nie rejestruj drukarki, ale możesz wydrukować stronę testową.

=== Instalacja na Linuxie: ===

Prerequisites:
* foo2zjs
* usb_modeswitch
* cups

HP dodaje feature który sprawia że domyślnie drukarka zgłasza się jako dysk z sterownikami. Działa to tylko na Windowsie. Sprawdzone rozwiązanie: https:''bugs.launchpad.net/hplip/+bug/672134/comments/2

<code>usb_modeswitch -m 2 -r 2 -v 0x03f0 -p 0x002a -M 505554202F6465762F666561747572655374617475732E786D6C20485454502F312E310D0A434F4E54454E542D4C454E4754483A203232320D0A555345522D4147454E543A68702050726F78792F332E300D0A484F53543A6C6F63616C686F73743A333931300D0A0D0A3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0D0A3C6665617475726553746174757320786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E636522207873693A6E6F4E616D657370616365536368656D614C6F636174696F6E3D22666561747572655374617475732E787364223E0D0A20203C736D617274496E7374616C6C3E64697361626C65643C2F736D617274496E7374616C6C3E0D0A3C2F666561747572655374617475733E0D0A0D0A -n -2 474554202F6465762F666561747572655374617475732E786D6C20485454502F312E310D0A434F4E54454E542D4C454E4754483A20300D0A555345522D4147454E543A68702050726F78792F332E300D0A484F53543A6C6F63616C686F73743A333931300D0A0D0A -n -R</code>

Po wykonaniu zresetuj drukarkę (włącz i wyłącz)

Dalej podążaj za instrukcją: http:''foo2zjs.rkkda.com/

Jeżeli masz CUPS wejdź na http:''localhost:631/admin/

=== Wymiana Tonera ===

* Model: HP LaserJet HT-85AN
* Koszt: ~25zł
* Ostatnia wymiana: ?
* Kto wymieniał: ?
