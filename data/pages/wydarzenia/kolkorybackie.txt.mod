= Kółko rybackie - sieci =
{{tag>wydarzenie cykliczne}}

----
== Idea ==
Zapraszam coby się wziąć, zebrać i pohakować razem sieci. Przychodzisz z zamiarem naumienia się czegoś, wybierasz sobie sieciowy temat do ogarnięcia (z materiałów lub własny) i lecim. Jak nie pyka to próbujemy sobie pomóc nawzajem :D
== Pierwszy raz? ==

Dołącz do naszego [[https:''wiki.hs3.pl/irc_howto|IRCa]] (''#hs3'' na Darmowęźle, jeśli już masz IRCa) lub [[https:''hs3city.slack.com|Slacka]] (+ wbij na kanał ''#kółko-rybackie'')
== Netkit ==

[[http:''wiki.netkit.org/index.php/Main_Page|Netkit]] to program ''emulacyjny'' wspomagający naukę sieci. Netkit odpala procesy Linuxa w userspace'ie i zapewnia wirtualną sieć na poziomie L1 między takimi procesami, co efektywnie daje złudzenie pracy na maszynach połączonych w sieć. Netkit opaty jest bodajże o Debiana i zawiera większość narzędzi potrzebny do zabaw z sieciami, np. demony routingu, pakiety do DNSów (''dig'', ''bind''), serwer www i wiele innych. 
=== Instalacja ===

* [[http:''wiki.netkit.org/index.php/Download_Official|Zaciąg tutaj]]
* [[http:''wiki.netkit.org/netkit-labs/netkit_introduction/netkit-introduction.pdf|Wprowadzenie i poradnik instalacyjny]]

==== Automat ====

'''Uwaga: to może nie działać i jest udostępnione do celów edukacyjnych'''
FIXME skrypt instalacyjny

== Materiały ==

* [[http:''wiki.netkit.org/index.php/Labs_Official|Oficjalne laby Netkitowe]]
* [[http:''wiki.netkit.org/contributed_labs/|Ćwierćoficjalne laby dodatkowe]]
* [[http:''strony.ug.edu.pl/~matjs/lab_dhcp.pdf|Nieoficjalny lab DHCP]]

=== Teoria ===
* [[https:''www.goodreads.com/book/show/166190.Computer_Networks|Andrew S. Tanenbaum - Computer Networks]]

Jedyna słuszna kniga, 1024 strony prawdy o życiu. Polskie tłumaczenie jest mocno znośnie - jak nie drukujecie dolanów w piwnicy to polecam motzno - kosztuje ~5x mniej, niż oryginał.
== Kathara ==

FIXME
http:''www.kathara.org/

== "Cykliczne" ==

Wydarzenie jest sporadyczne - zazwyczaj wypada między SPORGami (co drugi Wtorek), ale nie musi. {{http:''kanapony.pl/userdata/gfx/ed419535f3bfe863f044f659bfa60841.jpg?100}} nas na meetupie :D

== Haxy ==

=== Naumienie Netkita w coś innego, niż xterm ===
    # $NETKIT_HOME/bin/gnome-terminal
    shift
    shift
    exec $TERMINAL -e $@  # implying że zmienna TERMINAL prawilnie ustawiona

    # $NETKIT_HOME/netkit.conf - cza wyedytować
    ...
    TERM_TYPE=gnome
    ...

== Templatka wydarzenia ==
    Zapraszam coby się wziąć, zebrać i pohakować razem sieci. Więcej info: https:''wiki.hs3.pl/wydarzenia/kolkorybackie
    
    Możesz podążać za tematem przewodnim lub zgłębiać interesujące Cię tematy sieciowe. Początkujący mile widziani ;)
    
    Temat przewodni spotkania: [insert]
    ~ allgreed

== Temat przewodni ==

* Statyczny + dynamiczny (RIPng) routing z IPv6 - 28.05
* podstawy BGP - 11.06
* podstawy BGP c.d. - 18.06
* tunelowanie IP po DNSie - 3.09
