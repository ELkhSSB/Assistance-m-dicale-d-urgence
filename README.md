🏥 Assistance Médicale d’Urgence

Projet de Fin d’Études – Licence
Application Web Java EE (JSP/Servlets – MVC – DAO)

📌 Présentation du projet

L’application Assistance Médicale d’Urgence est une solution web permettant la gestion, la coordination et le suivi des interventions médicales d’urgence.
Elle offre une interface simple et efficace pour :

créer et suivre des demandes d’urgence,

gérer les équipes médicales,

organiser les interventions,

consulter les historiques et statistiques.

Ce projet a été réalisé dans le cadre de mon Projet de Fin d’Études (Licence) et comprend :
✔ le code complet de l’application
✔ le rapport final
✔ la base de données exportée

🧱 Architecture du projet
PFE licence
│
├── code/                    → Application web Java EE (src + WebContent)
│   ├── src/
│   │   ├── controller/      → Servlets (contrôleurs MVC)
│   │   ├── metier/          → Logique métier
│   │   ├── dao/             → Accès aux données (DAO, JDBC)
│   │   └── META-INF/
│   ├── WebContent/
│   │   ├── css/             → Styles
│   │   ├── images/          → Ressources graphiques
│   │   ├── view/            → Pages JSP (UI)
│   │   └── WEB-INF/         → web.xml + libs
│   └── build/               → Classes compilées (Eclipse)
│
├── rapport/                 → Rapport complet du PFE (PDF/DOCX)
│
└── db/                      → Base de données exportée (.sql)

📝 Fonctionnalités principales
👨‍⚕️ Interface administrateur

Gestion des équipes médicales

Consultation des urgences

Gestion des utilisateurs

Statistiques et historiques

🚑 Interface d’urgence

Création de demande urgente

Identification du patient

Description de la situation

Suivi de l’état de l’intervention

🗂 Base de données

Tables utilisateurs

Tables urgences

Tables équipes médicales

Historique des interventions

🛠️ Technologies utilisées
🔹 Backend

Java EE (JSP, Servlets)

JDBC

DAO Pattern (Data Access Object)

🔹 Frontend

JSP

HTML5 / CSS3

Bootstrap

JSTL

🔹 Base de données

MySQL

Script .sql fourni dans /db

🔹 Serveur d’exécution

Apache Tomcat (version 8+ recommandée)

Eclipse / NetBeans / IntelliJ

⚙️ Installation & exécution
1️⃣ Importer le projet dans Eclipse (ou autre IDE)

File → Import → Existing Dynamic Web Project

Sélectionner le dossier code/

2️⃣ Configurer la base de données

Importer le fichier SQL dans MySQL
(Tables et données initiales)

Modifier les paramètres JDBC dans le DAO :

String url = "jdbc:mysql://localhost:3306/your_database";
String user = "root";
String password = "";

3️⃣ Déployer sur Tomcat

Ajouter le projet au serveur

Run → Start Server

Accéder à l’application :

http://localhost:8080/AssistanceMedicaleUrgence

📚 Rapport PFE

Le dossier /rapport contient :

Le rapport complet du PFE (PDF)

Annexes si présentes

Diagrammes UML (si inclus dans le rapport)

💾 Base de données

Le dossier /db contient :

Export .sql complet

Structure de la BD

Données initiales

📸 Captures d’écran

(Tu peux les ajouter si tu veux, je peux te préparer la section.)

👤 Auteur

[Ton Nom]
Licence — Année universitaire
Contact : [ton email]

🎯 Conclusion

Ce projet propose une solution digitale moderne pour la gestion des urgences médicales. Il applique toutes les bonnes pratiques de conception : architecture MVC, séparation des couches, DAO, et organisation professionnelle du code.
