# Bibliotech

BiblioTech è il progetto che realizza una biblioteca virtuale che simula lo scambio di libri in formato
Ebook. È possibile scorrere il catalogo dei libri disponibili, leggere le recensioni degli utenti che hanno letto
in precedenza il libro selezionato e, ovviamente, prendere in prestito il libro stesso.

## Metodologie

Tale progetto è stato realizzato utilizzando il framework **Django**, per lo sviluppo dell'applicazione web, scritta in **Python**.<br>
E' possibile gestire utenti con **permessi** differenti, mediante logiche di sign in/login, con memorizzazione dei dati con un applicativo database **PostgreSQL**. L’utente admin ha il completo controllo sull’intero progetto.

## Modello E-R
Un **utente** registrato possiede il proprio profilo identificativo, reso univoco dalla presenza di un id numerico progressivo. Esso presenta dati anagrafici quali nome, cognome ed un indirizzo di posta elettronica.<br>
Ogni **libro** è identificato da un numero progressivo, in aggiunta dei dati che possono interessare i futuri lettori, quali titolo, autore, trama e immagine di copertina.<br>
Ogni utente è in grado di effettuare uno o più **prestiti**: rispettivamente, il singolo prestito è vincolato da un id numerico univoco progressivo e dai
dati identificativi dell’utente e del libro. Più utenti possono prendere in prestito lo stesso libro in quanto, trattandosi di Ebook, non
esiste un limite fisico di copie disponibili. Un singolo utente può riprendere in prestito lo stesso libro, ma solo dopo averlo riportato
e quindi cessato il prestito precedente.<br>
Il sistema non accetta ritardi in fase di consegna: se l’utente non restituisce il libro entro la scadenza, il sistema lo eliminerà dal suo profilo in maniera automatica. Una volta effettuata la consegna, il sistema darà la possibilità all’utente di rilasciare una **recensione**. Queste sono identificate da un numero univoco, data, testo e voto compreso da 1 e 5 indicate il grado di apprezzamento dell’utente stesso.
Le recensioni sono pubbliche: possono essere viste da ogni utente (registrato e non) in modo tale da invogliare o meno lettori futuri.
