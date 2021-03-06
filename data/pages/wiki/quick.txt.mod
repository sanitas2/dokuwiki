= Quick Syntax =
Bardzo szybkie wprowadzenie do składni

= Konwersja z Markdown =
Jeśli chcesz skonwertować tekst napisany w Markdown przy użyciu składni tego Wiki, polecamy użycie [[https:''pandoc.org/|Pandoc]]:

<code>
pandoc dokument.md -o dokument.dokuwiki
</code>

== Odnośniki do stron ==
Relatywny odnośnik do kotków w aktualnym namespace:
<code>
[[kotki]]
</code>
Relatywny odnośnik do kotków w namespace kuweta:
<code>
[[kuweta:kotki]]
</code>
Absolutny odnośnik do kotków w namespace który jest w głównym directory
<code>
[[:kuweta:kotki]]
</code>
Ogólnie to jest wyszukiwarka: w edytorze klika się łańcuch i tam się klika hej. Zawsze można dodać stronę wchodząć na odpowiedni adres pod którym ma się znaleźć. Tylko wtedy trzeba na nią gdzieś wskazać bo przepadnie.
== Nagłówki ==
<code>
= H1 =
== H2 ==
=== H3 ===
</code>

== Tagi ==
<code>
{{tag>jakiś_tag inny_tag}}
</code>
Da dwa tagi '''jakiś tag''' oraz '''inny tag'''

Poźniej można wyświetlić listę wszystkich stron z tagiem '''jakiś tag''':
<code>
{{topic>jakiś_tag}}
</code>

Tagi dodawaj po nagłówku i na dole zamknij linią poziomą
== Listy ==
<code>
* taka
* lista
</code>
* taka
* lista
<code>
# numerowana
# hej
</code>
# numerowana
# hej