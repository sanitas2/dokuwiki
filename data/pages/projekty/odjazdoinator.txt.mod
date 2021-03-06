= Odjazdoinator =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>justdzasta]] [[user>not7cd|not7cd]] [[user>yasiu]] [[user>CritBit95]] |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-03-07  |
|-
| 
|-
|}
{| class="wikitable sortable" border=1
!Status|{{tag>w_realizacji}}|
|-
| 
|-
|}

=== Założenia ===

Tablica wyświetlające nadchodzące odjazdy pobliskich tramwajno i innych PKMek.


== Wykonanie ==

=== Wrapper na API ZTM'u ===

[[user>CritBit95]] zrobił taki gównowrapper w pythonie, że generuje dane dla przystanków po ich ID:

API jest dedykowane dla urządzeń embedded, ale zwraca JSONa więc można też użyć w ambitnych frontendach.

Więcej o: https:''github.com/critBit95/3cityBusStopsApi

Testowy endpoint siedzi sobie na http:''ztm.shitposting.technology/
=== CLI-Frontend ===

Na urządzeniu infobox jest skrypt (w ~/stops/bord.sh), który w terminalu wyświetla niedługo odjeżdzające autobusy.

Zostało naukowo udowodnione, że skrypt ten zawstydza nawet twórców https:''motherfuckingwebsite.com/ .

=== Web Frontend ===

Próba [[user>yasiu]] w wyświetlaniu przystanków. Zostało połączenie z gównowraperem [[user>critbit]].

https:''3city.netlify.com/

https:''github.com/yasiupl/3city-buses/
== #ciekawe_przydatne ==

2030 to id zajezdni w kierunku centrum

http:''91.244.248.19/dataset/tristar

http:''87.98.237.99:88/delays?stopId=2030

https:''ztm.gda.pl/rozklady/przystanek-53.html

https:''ztm.gda.pl/rozklady/pobierz_SIP.php?n[0]=2030

https:''ckan.multimediagdansk.pl/dataset/c24aa637-3619-4dc2-a171-a23eec8f2172/resource/4c4025f0-01bf-41f7-a39f-d156d201b82b/download/stops.json

https:''ckan.multimediagdansk.pl/dataset/c24aa637-3619-4dc2-a171-a23eec8f2172/resource/3115d29d-b763-4af5-93f6-763b835967d6/download/stopsintrips.json

https:''ckan.multimediagdansk.pl/dataset/c24aa637-3619-4dc2-a171-a23eec8f2172/resource/a023ceb0-8085-45f6-8261-02e6fcba7971/download/stoptimes.json

https:''ckan.multimediagdansk.pl/dataset/c24aa637-3619-4dc2-a171-a23eec8f2172/resource/22313c56-5acf-41c7-a5fd-dc5dc72b3851/download/routes.json

http:''ckan2.multimediagdansk.pl/gpsPositions

http:''ckan2.multimediagdansk.pl/stopTimes?date=2019-10-19&routeId=405

http:''ckan2.multimediagdansk.pl/delays?stopId=2030

== Możliwości rozwoju projektu ==

Możliwe połączenie z [[matekrate]] 