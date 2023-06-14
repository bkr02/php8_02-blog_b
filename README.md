# Opdracht 03 Maken Blog B

Met OOP en PDO

Maak meerdere commits tijdens het programmeren!

# Stap 1: Database opzetten en tabellen aanmaken

- Maak een database aan met als naam: **blog\_b**

- Maak de volgende tabellen in de database:

##

-
## Tabel "users":

  - Velden:
  - id: Geheel getal, lengte 10, automatisch toenemend (auto\_increment)
  - username: Tekst, maximale lengte 100
  - password: Tekst, maximale lengte 255

-
## Tabel "posts":

  - Velden:
  - id: Geheel getal, lengte 10, automatisch toenemend (auto\_increment)
  - title: Tekst, maximale lengte 100
  - description: Tekst, maximale lengte 255
  - content: Tekst
  - created\_on: Datum en tijd (datetime: timestamp)
  - updated\_on: Datum en tijd (timestamp: timestamp on update)
  - deleted\_on: Datum en tijd (datetime: timestamp)
  - user\_id: Geheel getal, lengte 10, verwijst naar de "id" in de "users"-tabel (foreign key)

-
## Tabel "comments":

  - Velden:
  - id: Geheel getal, lengte 10, automatisch toenemend (auto\_increment)
  - post\_id: Geheel getal, lengte 10, verwijst naar de "id" in de "posts"-tabel (foreign key)
  - name: Tekst, maximale lengte 100
  - message: Tekst
  - created\_on: Datum en tijd (timestamp: timestamp)

#

#

# Stap 2: Pagina's maken voor de admin (backend)

_ **Maak gebruik van OOP en PDO !!** _

- Maak een pagina genaamd "admin.php" waarop het admin panel wordt weergegeven.

- Op de "admin.php"-pagina moet je kunnen navigeren naar de volgende pagina's:

a. Gebruikerspagina:

- Maak een pagina genaamd "users.php".

- Op deze pagina moeten alle gebruikers worden getoond.

- Voeg een functionaliteit toe om gebruikers te verwijderen.

b. Gebruiker aanmaken pagina:

- Maak een pagina genaamd "create\_user.php".

- Op deze pagina kunnen gebruikers worden aangemaakt.

- Voeg invoervelden toe voor de gebruikersnaam en het wachtwoord.

- Gebruik bcrypt om het wachtwoord te versleutelen.

c. Posts pagina:

- Maak een pagina genaamd "posts.php".

- Op deze pagina moeten alle posts worden getoond.

- Beperk het aantal posts dat wordt getoond tot 6 per pagina.

- Zorg ervoor dat de nieuwste posts als eerste worden getoond.

- Voeg een functionaliteit toe om op een post te klikken en naar een "post.php"-pagina te gaan.

d. Postpagina:

- Maak een pagina genaamd "post.php".

- Op deze pagina moet de titel en inhoud van een post worden getoond.

- Voeg functionaliteit toe om een post aan te passen of te verwijderen (indien de gebruiker de auteur is).

e. Post aanmaken pagina:

- Maak een pagina genaamd "create\_post.php".

- Op deze pagina kunnen gebruikers nieuwe posts aanmaken.

- Voeg invoervelden toe voor de titel, beschrijving en inhoud van de post.

# Stap 3: Pagina's maken voor de blog (frontend)

_ **Maak gebruik van OOP en PDO !!** _

- Maak een pagina genaamd "blog.php" waarop alle posts worden getoond.

- Beperk het aantal posts dat wordt weergegeven tot 6 per pagina.

- Zorg ervoor dat de nieuwste posts als eerste worden getoond.

- Toon alleen de titel en beschrijving van elke post op de blogpagina.

- Gebruik de GET-parameter in de URL (bijvoorbeeld `?page=1`) om de pagina's te pagineren.

# Stap 4: Pagina maken voor een enkele post (frontend)

_ **Maak gebruik van OOP en PDO !!** _

- Maak een pagina genaamd "single\_post.php".

- Zorg ervoor dat je op de titel van een post kunt klikken om naar de "single\_post.php"-pagina te gaan.

- Op de "single\_post.php"-pagina moet de volledige inhoud van de post worden getoond.

- Voeg functionaliteit toe om comments achter te laten op de post.

- Voeg invoervelden toe voor naam en bericht in het commentaargedeelte.

- Het tijdstip van het commentaar moet automatisch worden gegenereerd (timestamp).

# Stap 5: Vul de database met minimaal 20 posts

- Voeg minimaal 20 rijen toe aan de "posts"-tabel in de database.

- Vul de velden zoals titel, beschrijving, inhoud en auteur-ID met passende waarden.

_ **Zorg dat je code compleet op github staat, inclusief de volledige database!** _