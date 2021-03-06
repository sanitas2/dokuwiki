== SPICE ==
SPICE (ang. Simulation Program with Integrated Circuits Emphasis) – oprogramowanie do modelowania oraz symulacji elektronicznych układów analogowych i cyfrowych, zaprojektowany głównie z myślą o analizie obwodów z układami scalonymi.
=== Windows ===
'''Na 2 spotkanie''' tj. 27.02.2018 roku polecam pobrać i zainstalować program komputerowego wspomagania projektowania typu ECAD o nazwie LTSpiceXVII dostępnym bezpłatnie pod poniższym adresem:

[[http:''www.linear.com/designtools/software/]]

Program ten pozwoli na budowę radio odbiorników jak i radio nadajników i przeprowadzenie wielu symulacji. Jest to najlepszy sposób aby zrozumieć działanie obwodów elektronicznych występujących w radioelektronice.
Program można zainstalować jedynie na systemach OSX lub Windows.
Nie trzeba zakładać konta aby pobrać oprogramowanie.

{{:wiki:ltspice.png?800|}}

=== Linux ===
Można postawić LTspice na wine.
Istnieje jednak ''ngspice'' i wraz z ''qspiceui'' oferuje zbliżoną funkcjonalność. ((https:''electronics.stackexchange.com/questions/55087/spice-simulator-at-linux))

<code>sudo apt install ngspice gspiceui</code>

Widząc, iż niektórzy uczestnicy szkoleń reagują alergicznie na software napisany tylko na Windowsa oraz OSX (jednocześnie popierając takie podejście) poniżej link opisujący jak zrealizować wszystkie ćwiczenia korzystając z '''ngspice'''.

[[https:''ashwith.wordpress.com/category/tutorials/spice/|Zestaw tutoriali do nauki ng-spice]] 

Polecam zacząć od poniższego tutorialu.

[[https:''ashwith.wordpress.com/2010/09/10/circuit-simulation-in-gnulinux-lets-begin/|Tutorial jak narysować schemat, wygenerować netlistę i puścić symulację, oraz obejrzeć wyniki symulacji]]
