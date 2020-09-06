= RTL-SDR =
{{tag>poradnik}}
----

Zastosowania i użytkowanie SDR - Software Defined Radio, bazującego na chipie RTL2832 R820T2.

===== Zakup =====
Google RTL-SDR RTL2832 R820T2 od 30 do 200zł

===== Instalacja sterowników =====
https:''www.rtl-sdr.com/rtl-sdr-quick-start-guide/

===== Kalibracja =====
https:''github.com/steve-m/kalibrate-rtl (jest w AUR)
https:''web.archive.org/web/20131226204943/http:''www.thre.at/kalibrate

# Znajdź aktywne kanały w paśmie GSM900: <code>kal -s GSM900</code>
# Zmierz ppm w odniesieniu do kanału (-e to początkowy błąd): <code>kal -c <kanał> -e 50</code>


===== Program do obsługi: =====
http:''gqrx.dk/doc/practical-tricks-and-tips

W 'Input controls' -> 'Freq. correction' wpisz ppm z [[#kalibracja|kalibracji]].


===== Skanowanie wielu częstotliwości: =====
https:''github.com/neural75/gqrx-scanner
=== Więcej ===
* Rozpoznawanie sygnałów: https:''www.sigidwiki.com/wiki/Signal_Identification_Guide
* Nasłuch sygnałów satelitarnych: https:''www.instructables.com/id/NOAA-Satellite-Signals-with-a-PVC-QFH-Antenna-and-/
* [[radio|Poradnik Radioamatorski]]