# Tool utilizzati
<img src="https://mlyau5vyqpxz.i.optimole.com/w:430/h:106/q:mauto/f:avif/https://ampl.com/wp-content/uploads/2020/12/logo-inline-web-v4.png" width="200">

# Traccia del problema

PrivateOnDemand S.p.a. vuole progettare una rete di comunicazione per inviare informazioni di carattere privato "on demand". Ha a disposizione l'insieme di nodi  $\\{A, B, C, D, E, F, G\\}$, che possono essere interconnessi tramite il seguente insieme di archi orientati:  $\\{(A,B), (A,C), (C,E), (B,D), (C,D), (D,E), (D,F), (E,G), (E,F), (F,G)\\}$.

I costi fissi di attivazione degli archi della rete sono pari a Euro $\\{10.000 , 15.000 , 30.000, 18.000, 20.000 , 12.000, 16.000, 16.000 , 12000, 10.000\\}$. I costi variabili di instradamento dei dati lungo gli archi della rete sono stimati pari a   $\\{300, 150, 500, 300, 300, 500, 350, 200, 250, 300\\}$ Euro/Mbit/s. Una volta attivati, gli archi della rete risultano equipaggiati con le seguenti capacità: $\\{10, 20, 10, 10, 20, 7, 8, 20, 17, 15\\}$ Mbit/s. 

Il database contenente le informazioni è localizzato nel nodo $A$, mentre il cliente che si vuole servire è localizzato nel nodo $G$. La richiesta di connessione da $A$ a $G$ è pari a 15 Mbit/s.

PrivateOnDemand S.p.a. vuole valutare qual è il minimo costo necessario per connettere il cliente in $G$ al database in $A$. Ovvero, vuole progettare la rete di comunicazione decidendo quali archi attivare, e come instradare i dati lungo la rete, in modo da soddisfare la domanda di connettività e rispettando i vincoli di capacità, in modo tale da minimizzare il costo totale sostenuto (costi fissi + costi variabili).

# Project requirements

1. Si formuli il problema di PrivateOnDemand S.p.a. mediante un modello PLI.												
2. Si implementi il modello proposto mediante il linguaggio di modellazione AMPL, e lo si implementi mediante il solver di ottimizzazione CPLEX.
3. Si modifichi il modello proposto al punto 1 imponendo che tutti i dati (ovvero i 15 Mbit/s) siano inviati lungo un unico cammino della rete da $A$ a $G$.	
4. Si implementi e risolva il modello proposto al punto 3, mediante AMPL e CPLEX, e si confronti la soluzione ottenuta con quella determinata al punto 2.	
