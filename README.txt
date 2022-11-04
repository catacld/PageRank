Nume: Caldaruse Marius-Catalin
Grupa: 313CA

Algoritmul Iterative

-Citim datele din fisier si cream matricea de adiacena a grafului
-Folosim un vector auxiliar, "D", care ne va ajuta la formarea matricei
de legaturi, unde retinem numarul de legaturi de iesire ale fiecarui nod
-Cream matricea legaturilor, impartind fiecare valoare de pe linia i a
matricei de adiacenta, la numarul legaturilor de iesire ale nodului i, apoi
transpunand-o
-Luam in calcul coeficientul 'd'
-Calculam vectorul de PageRank-uri 'R', tinand cont de eroarea acceptata 'eps'

Algoritmul Algebraic

-Asemanator ca in implementarea algoritmului Iterative, citim datele
din fisier si cream matricea legaturilor, folosind un vector auxiliar 'D'
-Calculam vectorul de PageRank-uri 'R', folosind un algoritm Gram-Schmidt 
optimizat pentru a calcula inversa matricei si luand in calcul coeficientul 'd'

Algoritmul Gram-Schmidt optimizat

- Retinem dimensiunile matricei in doua variabile, 'm', respectiv 'n'
- Punem pe diagonala principala a matricei 'R' norma vectorului coloana 'k'
din matricea 'Q'
- Calculam "noua" coloana k din matricea 'Q'. impartind fiecare valoare de pe
coloana la norma vectorului coloana 'k'
- Calculam elementele de pe linia 'k' din R, respectiv celelalte coloane din 
matricea 'Q'

Algoritmul PageRank

-Deschidem fisierele necesare de unde vom citi datele
-Afisam, conform cerintei, numarul de pagini web analizate
-Declaram un vector auxiliar, "arrayj", unde vom retine indicii paginilor
pentru a ii afisa la ultimul pas, in urma sortarii
-Afisam cei doi vectori de PageRank-uri, "R1" si "R2", calculati cu ajutorul
functiilor "Iterative", respectiv "Algebraic"
-Citim cele doua valori, "val1", respectiv "val2"
-Sortam descrescator vectorul "R2" si retinem rezultatul in vectorul "PR1",
sortand, de asemenea, indicii retinuti in vectorul auxiliar "arrayj" 
-Afisam valorea u(PR1(i)), pentru fiecare componenta a vectorului "PR1", 
folosind functia "auxfunction"

Functia "auxfunction"

-Calculam valorile A, respectiv B, astfel incat functia sa fie continua,
in functie de parametrii val1 si val2 oferiti.
-Aplicam functia asupra unei valori "x", date ca parametru


Bibliografie:

Notite de curs - Valeriu Iorga (algoritmul Gran-Schmidt modificat)
