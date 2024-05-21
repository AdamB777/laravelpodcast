# O PROJEKCIE

Projekt PodSpektrum jest zaawansowanym serwisem internetowym, służącym do katalogowania, oceniania i komentowania podcastów.

Jest to strona responsywna z dodatkowymi ułatwieniami takimi jak tryb jasny/ciemny.

Projekt wykorzystuje technologie takie jak Laravel i Tailwind.css.

# INSTRUKCJA

W paczce znajdują się dwa katalogi:

- `/sources`
    - zawiera pliki źródłowe projektu

- `/database`
    - zawiera plik z bazą danych

Projekt jest przygotowany do pracy z lokalną bazą danych o nazwie `podcasty`. W przypadku innej bazy należy ręcznie skonfigurować plik `.env`.

W paczce został uwzględniony katalog `/node_modules` - zawierający zależności Node.js. Wersja Node.js używana przy budowie projetu: `20`.

Paczka z projektem zawiera również skompilowane style `tailwind.css`.

W wypadku gdyby były problemy z uruchomieniem projektu i widocznością styli, proszę wykonać następujące kroki:

1. Należy usunąć katalog `/node_modules`.
2. Następnie poleceniem `npm install` zainstalować na nowo zależności.
3. Poleceniem `npm run dev` należy skompilować na nowo style `tailwind.css`.

Jeżeli w dalszym ciągu są problemy, należy również usunąć katalog `/vendor` zawierający zależności composera, i zainstalować je na nowo poleceniem `composer install`.

W pliku `.env` jest możliwość włączenia paska narzędzi dla debugowania Laravel - 'laravel debug bar'. W tym celu należy zmienić wartość linijki na `APP_DEBUG=true`. W przypadku wystąpienia niespodziewanych problemów, pasek ułatwi debugowanie aplikacji.

Przykładowe dane logowania do strony znajdują się w pliku 'dane_logowania.txt'.

