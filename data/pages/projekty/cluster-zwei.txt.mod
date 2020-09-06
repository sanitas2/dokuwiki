= Cluster-zwei =

{| class="wikitable sortable" border=1
!Zamieszany|[[user>allgreed]], [[user>rafa]], [[user>yasiu]] |
|-
|}
{| class="wikitable sortable" border=1
!Rozpoczęto|oj... dawno xD  |
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
{| class="wikitable sortable" border=1
!Repo|[[https:''github.com/allgreed/cluster-zwei/|Github]]  |
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

> Wincyj kompjuta, wincyj!!! Liczy się tylko ilość rdzeni i GPU! Prąd mamy w ryczałcie, a jak huczy to znaczy, że działa ~ na pewno nie [[user>olo]]

Ogólnie chodzi o to, żeby w HSie było więcej sprzętu on prem + fajnie mieć klaster x86_64 do zabawy - cross kompilacja na ARMy jest fajna, dopóki jest fajna. 3 <del>po-leasingowe graty</del> laptopy najwyższej klasy zostały <del>chyłkiem zajumane</del> wzięte za błogosławieństwem ze stery nieużywanych laptopów i wrzucone w kratę po matę.

== Cele, plany, marzenia ==

* Odpalenie tego cuda
* Odpalenie na tym Nomada / K8s
* Zrobienie łatwego i przyjemnego provisionownaia, coby można się było bawić różnymi systemami na bare metalu z relatywnie małym jebaniem
== Specki laptopów ==

FIXME

+ suma zasobów w klajstrze

== Czego się nauczyliśmy ==

* jest coś takiego jak soft-poweroff i hard-poweroff
* wake-on-lan jest rzeczą
* rozkręcanie laptopów typu "chiński plastik" to droga przez mękę
* cięcie drewna jest zadziwiająco proste i przyjemne
* LVM wcale nie gryzie
* pijana małpa potrafi postawić GlusterFSa
== Worklog ==
{{:projekty:cluster-stelage.jpg?300|}} 
--- ''[[user>allgreed]] 2019/05/31 coś koło 20''

Dodałem wpis na wiki --- ''[[user>allgreed]] 2019/06/07 18:36''

{{:projekty:cluster-poc.jpg?300|}} --- ''[[user>allgreed]] 2019/06/07 22:00''

{{:projekty:photo5773625348494307670.jpg?300|}}  --- ''[[user>allgreed]] 2019/06/14 19:59''

Heh, <del>zjebaliśmy</del> zkasztaniliśmy partycjonowanie i root FS ma 4 giga, kiedy cały dysk ma circa 300 xD  --- ''[[user>allgreed]] 2019/06/23 22:18''

{{:projekty:lapkiladne.png?300|}}  --- ''[[user>allgreed]] 2019/07/23 22:52''

Dużo się dzieje pod [[https:''github.com/allgreed/nixops-playground/|tym repo]] - PoC klastra opartego o Hashi stack + NixOSa --- ''[[user>allgreed]] 2019/10/09 23:30''