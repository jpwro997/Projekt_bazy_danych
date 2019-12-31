# Projekt_bazy_danych
Cześć! Przedstawiam Wam dotychczasowe efekty mojej pracy.
Co mamy:
- bazę danych z więzami 
- wyzwalacze 
- wstępnie wypełnione tabele Kierowcy, Pojazdy, Płace, Wykaz Linii
- masę funkcji przydatnych do obsługi bazy

Czego nie mamy
- widoki (jeden zaczęty, tzn widok miesięcznych wynagrodzeń dla każdego z kierowców - ale nie zdążyłem dokończyć)
- interfejs graficzny
- wypełnienie tabeli Wykaz_sluzb

Ogólnie cała baza funcjonuje tak że korzystając z Kierowców, Pojazdów i Wykazu Linii wypełniamy Wykaz Służb, czyli gdzie danego dnia i czym jeździli kierowcy, i potem aby wyliczyć, jaka im się należy pensja (podstawa niezależnie od tego, ile pracowali + ewentualne nadgodziny). Zwalnianie kierowców i kasacja pojazdów przebiega podobnie tzn. nie usuwamy ich z bazy ale ustawiamy flagę czy_aktywny / czyy_sprawny na FALSE i np. "zatrudniając" kogoś ponownie dostaje nowy numer służbowy i jest nową krotką w bazie kierowców. 

Na wszystkie pytania chętnie odpowiem fb/mail. Proszę przy edycji uważać na rzutowanie typow danych - szczególnie DATE / INTERVAL, bo z nimi mogą wyjśc nieciekawe błędy. 
