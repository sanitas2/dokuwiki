{{tag>poradnik}}{{tag>ml}}{{tag>python}}

= Machine learning w python =

Jest to krótki poradnik w którym przedstawię jak zainstalować podstawowe narzędzi potrzebne przy projektach Machine Learning z wykorzystaniem python3.


== Ubuntu ==
Zaleca się wykorzystanie virtualenvwrapper do stworzenia oddzielnego środowiska, w którym zainstalowane zostaną biblioteki. Ten poradnik tego nie robi ;]

 <code>
sudo apt-get install python3
sudo pip3 install numpy scipy scikit-learn jupyter matplotlib pandas
 </code>

== Windows ==
Pod tym systemem operacyjnym większość poradników sugeruje wykorzystanie anacondy:

# pobierz i zainstaluj anacondę dla python 3.6:  https:''www.anaconda.com/download/#windows
# wykonaj polecenie: "conda install numpy scipy scikit-learn jupyter matplotlib pandas"

Uwaga: porada nie została przetestowana przez autora poradnika, autor ją bezczelnie ukradł z tego źródła: https:''github.com/glouppe/tutorials-scikit-learn

