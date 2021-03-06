= Mroźna majówka =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>mroz]]  |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|2018-04-30  |
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

Majówka to piękny czas, żeby wreszcie coś zrobić, a dokładniej 7 takich cusiów - jeden na każdy dzień majówki.

== Worklog ==

=== Projekt 1 - pokazówka na warsztaty z micro:bit ===

W najbliższym czasie, będę prowadzić warsztaty z programowania w micropython na micro:bitach w mojej firmie (adva), aby nie przyjść z pustymi rękoma, postanowiłem przygotować projekt - pokazówkę. Jako że firma produkuje sprzęt sieciowy, zaś ja osobiście siedzę w dziale automatyzacji, postanowiłem przygotować przykładowy układ/test jig oparty na micro:bit prezentujący możliwości wykorzystania tej technologi to tworzenia szybkich prototypów układów testujących produkowane urządzenia.

Wymagania:
# kontrola przez interfejs CLI
# układ ma być w stanie fizycznie podłączyć i odłączyć przewód LAN
# układ ma być w stanie podłączyć oraz odłączyć urządzenie do/z zasilania
# układ ma być w stanie fizycznie podłączyć oraz odłączyć wtyczkę SFP do testowanego urządzenia.

Wyniki:

Udało się uzyskać wszystkie wymagania oprócz ostatniego - podłączania/odłączania wtyczki SFP - zabrakło na to czasu. Do projektu wykorzystano: kawałek deski, kilka śrub, kątowniki stolarskie, taśma montażowa, micro:bit, moduł 2x przkaźnik, serwo, konwerter buck-boost, płytkę prototypową, adapter micro:bit - płytka prototypowa, kabelki.

==== Kod ====
<code>
from microbit import *
class Actions(object):
    def connect_lan(self):
        """Connect the lan plug int the DUT"""
        pin16.write_analog(130)
        sleep(10c00)
        pin16.write_digital(0)
        
    def disconnect_lan(self):
        """Disconnect the lan plug from the DUT"""
        pin16.write_analog(60)
        sleep(1000)
        pin16.write_digital(0)

    def plug_power(self):
        """Power on the DUT by enabling power"""
        pin12.write_digital(1)
        
    def unplug_power(self):
        """Disconnect power from the DUT"""
        pin12.write_digital(0)
    
    def _wrong_action(self):
        uart.write("\nthere is no such action. try again\n")
        
    def help(self):
        """Display list of avalaible commands"""
        uart.write("""
        connect_lan    - Connect the lan plug int the DUT
        disconnect_lan - Disconnect the lan plug from the DUT
        plug_power     - Power on the DUT by enabling power
        unplug_power   - Disconnect power from the DUT
        help           - show this help
        """)

def read_command():
    command = ''
    while True:
        while not uart.any():
            sleep(1)
        byte = uart.read(1)
        uart.write(byte)
        if ord(byte) == 13:
            break
        command += chr(ord(byte))
    return command

actions = Actions()
uart.write("Hello, enter 'help' for commands list\n")
while True:
    command = read_command()
    uart.write("\n\ncommand: {}\n\n".format(command))
    getattr(actions, command, actions._wrong_action)()
</code>

==== Zdjęcia ====

Tak oto wygląda wynik prac projektowych:

{{ :projekty:img_20180430_235214.jpg?direct&200 }}
{{ :projekty:img_20180430_235229.jpg?direct&200  }}

=== Monolit ===

Celem projektu jest budowa monolitu inspirowanego czarnym [[https:''en.wikipedia.org/wiki/Monolith_(Space_Odyssey) | monolitem]] z odysei kosmicznej, który służy do godnego prezentowania obydwu tomów Sztuki Elektroniki. Szafeczka, która ma posłużyć powstała wcześniej.

Wymagania funkcjonalne:
# szafeczka ma przechowywać oraz godnie eksponować dwa tomy Sztuki Elektroniki
# szafeczka ma mieć system automatycznego otwierania oraz zamykania drzwiczek sterowany przy pomocy guzika.
# drzwiczki szafeczki mają się otwierać pełnym godności, powolnym posuwistym ruchem
# otwieraniu drzwiczek ma towarzyszyć muzyka z odysei kosmicznej
# otwieraniu drzwiczek mają towarzyszyć zgrane z muzyką efekty świetlne
# wnętrze monolitu, celem podkreślenia efektów świetlnych ma być białe
# z zewnątrz monolit ma być czarny

==== Postępy ====
# Kiedyś - budowa szafeczki, pomalowanie wnętrza na biało
# 1 V 2018 - skonstruowanie czujników otwarcia i zamknięcia drzwiczek opartych na fotoprzerywnikach oraz analogowych śrubkach, mechanizmu otwierania i zamykania drzwiczek opartego na silniku z drukarki, lego, sznurka, prętów metalowych z drukarki oraz zużytych baterii jako przeciwwagi
==== Galeria ====

{{ :projekty:img_20180501_225315.jpg?direct&200 | Dzień 1: zewnętrzny ogląd monolitu - widać mechanizm otwierający/zamykający }}
{{ :projekty:img_20180501_225222.jpg?direct&200 | Dzień 1: wnętrze monolitu widać przeciwwagę odpowiedzialną za zamykanie drzwiczek oraz fotoprzerywacze odpowiedzialne za detekcję zamknięcia drzwiczek }}
{{ :projekty:img_20180501_225230.jpg?direct&200 | Dzień 1: fotoprzerywacz oraz śrubka pełniąca rolę czujnika otwarcia drzwiczek}}
{{ :projekty:img_20180501_225251.jpg?direct&200 | Dzień 1: tył monolitu - serwomechanizm otwierający drzwiczki}}

=== Open Machine Spirit - kontroler zaworu grzejnika ===

W ramach projektu [[projekty:open_machine_spirit | Open Machine Spirit]] projektujemy wspólnie system automatyki domowej. W ramach tego projektu mam zamiar stworzyć dzisiaj sprawny prototyp zaworu grzejnikowego. Wstępny prototyp oparty o wyjęty z komercyjnego rozwiązania serwomechanizm zaworu, mostek H na tranzystorach bipolarnych oraz micro:bit został przygotowany wcześniej.

Wymagania:
# układ musi być w stanie wysterować komercyjny serwomechanizm wyjęty z innego, dostępnego na rynku sterownika
# układ musi być zdalnie sterowany z poziomu wygodnego panelu administracyjnego

==== Postępy ====

# 2 V 2018 - analiza dokumentacji [[http:''home-assistant.io|Home Asisstant]] pod kątem dodania wsparcia dla micro:bit

==== Galeria ====
{{ :projekty:img_20180502_175113.jpg?direct&200 | Dzień 1: wstępny prototyp oparty na mostku H z tranzystorów bipolarnych, micro:bit oraz serwomechanizmu zaworu }}

=== Projekt pusty ===

Czwartek jest ciężki i pasuje ;p poczytałem se o zasłonach zaciemniających i posłuchałem podcastu Joe Rogann 1109 z gościem od głowy i snu. I tyle.

=== Wieszak na ręczniki papierowe ===

Plan jest prosty - potrzebuję w kuchni wieszaka papierowe ręczniki. Idealny projekt na relaksujący piątek. Z wykorzystaniem Jackowej piły posuwowej i czyjejś (czyjej?) szlifierki pasowej całość zajmuje tylko chwilę.

==== Wymagania ====
# wieszak ma być estetyczny
# wieszak ma być podczepiany pod półkę, która już wisi na ścianie.

==== Rozwiązanie ====
# kawałek drewna, odpadek z budowy półki
# kawałek stalowego(?) pręta.
# lakier do drewna.

projekt jest równie prosty co problem - kawałek zaokrąglonej, polakierowanej deseczki, z której pod kątem prostym wystaje długi, metalowy pręt służący do wieszania ręczników.

==== Galeria ====

{{ :projekty:img_20180504_154546.jpg?direct&200 | Materiały na projekt - deska i pręt }}

<del>zdjęcie gotowego projektu będzie jutro - gdy wyschnie lakier.</del>
{{ :projekty:img_20180505_221831.jpg?direct&200 |}}
{{ :projekty:img_20180505_221809.jpg?direct&200 |}}

=== Projekt 6: raport z rynku trójmiejskich nieruchomości ===

Jako przedstawiciel pracującej szlachty IT posiadam pewien nadmiarowy przychód, który warto by zainwestować w coś dochodowego i bezpiecznego, a czy istnieje na tym świecie inwestycja bezpieczniejsza niż inwestycja w nieruchomość? 

==== Wymagania ====
## zbudować bazę danych zawierającą: powierzchnię, liczbę pokoi, cenę i adres nieruchomości na terenie trójmiasta
## zbudować bazę danych zawierającą: powierzchnię, liczbę pokoi, cenę i adres nieruchomości pod wynajem na terenie trójmiasta
## stworzyć heatmapę cen nieruchomości
## stworzyć heatmapę cen wynajmu 
## znaleźć kolejne możliwości analizy uzyskanych danych.

==== Dziennik prac ====
## 2018/05/05 12:43 -- początek prac nad projektem -- znaleźć stronę zawierającą informację o nieruchomościach na sprzedaż i użyć scrapy do pobrania danych, <del>narazie, o jednej nieruchomości.</del> Udało się ukraść całą bazę danych mieszkań na trójmiasto.pl
## 2018/05/12 -- instalacja Nominatim w lokalnej maszynie wirtualnej -- bazy danych adresów, która umożliwi stworzenie mapy wizualizującej wyniki raportu. Instalacja przeprowadzona na podstawie: [[http:''nominatim.org/release-docs/latest/appendix/Install-on-Ubuntu-16/]], kolejny krok to import bazy OSM. Aktualny stan: ''Internal Server Error:  nativecode=pg_connect(): Unable to connect to PostgreSQL server: FATAL:  database "nominatim" does not exist ''' <nowiki>pgsql:''@/nominatim</nowiki>''. 

==== Kod ====


<code>

class NieruchomosciTrojmiastoCrawler(scrapy.Spider):                                           
    name = "nieruchomosci_trojmiasto_pl"       

    def start_requests(self):                  
        urls = [                               
           'https:''dom.trojmiasto.pl/nieruchomosci-sprzedam/wi,100.html?strona=101', # mieszkania                                                                                             
           #'https:''dom.trojmiasto.pl/nieruchomosci-sprzedam/wi,200.html', # domy             
        ]                                      
        for url in urls:                       
            yield scrapy.Request(url=url, callback=self.parse)                                 

    def parse(self, response):                 
        items = response.css('.ogloszenia .ogl-item')                                          
        for item in items:                     
            url = item.css('h3.title a::attr(href)').extract_first()                           
            name = item.css('h3 a::text').extract_first()                                      
            price = item.css('.prize strong::text').extract()[0].strip()                       
            price = ''.join(re.findall('\d+', price))                                          
            address = item.css('.place::text').extract_first().strip()                         
            address = (';'.join(filter(None, re.split('\s+', address)))).replace(';/;','/')    
            attrs = item.css('.ogl-params li::text').extract()                                 
            rooms = level = surface_area = 'None'                                              
            for attr in attrs:                 
                if 'pok.' in attr:             
                    rooms = re.search('\d+', attr).group(0)                                    
                elif 'piętro' in attr:         
                    level = re.search('\d+', attr).group(0)                                    
                elif 'm' in attr:              
                    surface_area = re.search('\d+(\.\d+)?', attr).group(0)                     

            if price and surface_area != 'None':                                               
                price_per_m2 = "{0:.2f}".format(float(price) / float(surface_area))            

            yield {                            
                'url': url, 'name':name, 'price':price, 'address':address,                     
                'rooms':rooms, 'level': level, 'surface_area':surface_area,                    
                'price_per_m2': price_per_m2   
            }                                  

        next_url = response.css('.subcontent-body.ogloszenia .navi-bar .navi-pages li.page-last a::attr(href)').extract_first()                                                                
        I('next_url={}'.format(next_url))      
        if next_url:                           
            yield response.follow(response.url.split('?')[0] + next_url, callback=self.parse)  

</code>

=== Projekt ostatni: Zamek do warsztatu===

od wieków @yazjack próbuje odpalić kontrolę dostępu do warsztatu, ale nie może bo c++. Dlatego też w ostatni dzień będę próbował zintegrować istniejący serwer kontroli dostępu stworzony przez @algreed z urządzeniem @yazjack. Trzymajcie kciuki.


==== Dziennik prac ====
# 6 V 2018 - główny problem został rozwiązany - esp potrafi się komunikować z serwerem i interpretować odpowiedź. teraz trzeba jeszcze dodać obsługę serva i wywalić bazę danych z github . Branchyk: https:''github.com/allgreed/core-doorctl/tree/mroz-working-connection