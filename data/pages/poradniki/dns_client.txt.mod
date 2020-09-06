= Jak być dobrym klientem DNSów =
{{tag>poradnik}}
----

== DNSy w masce ==
W HSie chodzi serwer DNS i to jest ogólnie spoko, tylko domyślnie przez niego płyną '''wszystkie''' requesty, które robicie z domyślną konfiguracją. Ja tego nie loguję, ale mógłbym, a przynajmniej tak bym wam mówił, jakbym logował. Zazwyczaj logowaniem zajmuje się ISP, ale w HSie wyznajemy redundancję, więc logować Twoje requesty możemy zarówno my, jak i nasz ISP ;d

Jest to najlepsze rozwiązanie, jakie wymyśliłem - masz lepszy pomysł? Pisz do [[user>allgreed]].

=== Co robić, jak żyć? ===

# Weź kredyt, zmień pracę, cebulaku
# Zainstaluj i odpal ''dnsmasq''
# Dodaj rozwiązywanie domen ''.hs'' przez nasz serwer DNS do configu dnsmasq'a: ''server=/hs/10.14.10.4''
# Wbij dnsmasq'a do ''resolvconfa''
# ???
# PROFIT $$$

Jak masz ''resolved'' to wrzuć
  [Resolve]
  DNS=10.14.10.4
  Domains=~hs
do ''/etc/systemd/resolved.conf''.

W tym momencie requesty o rozwiązanie ''.hs'' będą szły do HSu, a reszta według Twojej hierarchii rozwiązywania. Prawda, że proste? Przyps jest taki, że jak przestawimy DNSa gdzieś indziej to trzeba będzie zmienić, ale cóż... życie.

Dla poglądu: [[https:''github.com/allgreed/dotfiles/commit/db41a8eeed05545cfec223d91755aa3847f1079f|moje ansible na DNSy]]