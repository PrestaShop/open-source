---
title: How to Manage a release
---


Lorsqu’une nouvelle Release est effectuée par les développeurs, un Test Plan et un Release Plan doivent être créés du côté de la QA. 

Cette page a pour but de vous expliquer comment créer ces différents tickets avant d’effectuer une release. 

# 1. Connaître la release

Avant même de commencer à faire un tickets dans Jira, vous devrez vous renseigner sur la release qui va être testée. 

Pour ce faire, rien de plus simple, il suffit : 

1. Aller dans les Pull request de Prestashop : 

![Untitled](images/release_manager_img_1.png)

2. Cliquer sur Milestones

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c545bf5d-1caf-4544-8870-7ffb4187a9c9/Untitled.png)

1. Cliquer sur la version qui vous convient (ici dans l’exemple ça sera la 1.7.8.9) 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f7ad8b8e-9fb3-4b69-88ef-9c0317edb616/Untitled.png)

4. Cliquer sur les Closed (ce sont les différentes PR mergées pour la version sélectionnée) 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4cb52afb-f511-429a-9957-ab2c16683285/Untitled.png)

Vous connaissez à présent toutes les PR que comportent votre release. Il est fortement recommandé de tous les vérifier afin de savoir ce que ces PRs pourraient toucher. 

# 2. Répertorier les scénarios de tests

Maintenant que vous savez de quoi parle votre release, vous allez répertorier les différents scénarios de test. Vous aurez besoin d’un support pour prendre des notes. 

Nous allons de nouveau faire cela en quelques étapes : 

1. Ouvrir Jira au niveau des scénarios de tests

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1d3169a2-0f3a-4fc4-ba91-7a90e8588930/Untitled.png)

1. Sélectionner les divers repos touchés par les PRs (exemple : une modification sur la création d’un produit) 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/64fa6746-2c75-4da1-9de2-bc1ef2af3259/Untitled.png)

3. Une fois que vous avez repéré les différents scénarios qui vous intéressent, retenez les (ou marquez les dans votre support de notes). Pensez à ne pas prendre les scénarios déjà automatisés, ceux-ci seront tester via un test auto.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5d4cfeb8-57a4-4e28-b18b-f2d81b30b90c/Untitled.png)

Une fois votre liste finie, vous pouvez passer à la création de votre Test plan et votre Release plan en découlera 

# 3. Créer votre Test plan

1. Commencez par cliquer sur le bouton “Create”

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4aad5584-2824-4752-b560-33ff57a96dea/Untitled.png)

1. Remplissez les champs proposé de cette façon : 
**Project** : Equipe QA 
**Issue Type** : Test Plan 
**Summary** : Campagne Ciblée - [votre_version] - Test Plan
**Description** : Campagne Ciblée - [votre_version] - Test Plan 
**Assignee** : Unassigned
**Affect version** : [votre_version]
**Label** : core
**Component/s** : Core 
**Affected Tribe** : Tribe Core Open source 

et cliquer sur le bouton “Create”

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c6f624ef-9cc9-4c51-8159-c86943e0fc5b/Untitled.png)

1. Pour retrouver votre Test plan, cliquez rapidement sur la notification verte qui vient de s’afficher sinon : 

3.1. Cliquez sur issues 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/be916d69-33e6-44e5-b3b1-3afabb55acff/Untitled.png)

3.2. Filtrez par date de création 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c913d7b3-7196-432f-a0b0-528bd24bff4e/Untitled.png)

3.3. Votre Test Plan devrait être la dernière création, cliquez sur son numéro pour qu’il s’ouvre en plein écran 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dd8f8083-1cfd-487c-9e56-f40233ee0489/Untitled.png)

1. Rajoutez les tests grâce à leurs noms (que vous aurez au préalable retenu) dans la case “Contain Text”

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/56575756-b173-467e-a711-0b6c61f5a564/Untitled.png)

-

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/02bd3d18-3174-450f-a9bd-3e9000cbac93/Untitled.png)

5. Sélectionnez les scénarios qui correspondent à votre recherche 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f90222b1-1112-44e4-a0fb-9098bcf22d86/Untitled.png)

1. Une fois ces scénarios sélectionnés, cliquer sur “Add Selected” 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/457684fb-c306-419a-a419-4c57bf07f8d6/Untitled.png)

Reproduisez ces dernières étapes autant de fois qu’il le faut pour mettre tous les tests vu lors du deuxième chapitre. 

# 4. Créer votre Test Execution

Maintenant que notre Test Plan est crée, nous devons nous occuper du Test Execution, celui-ci peut être créé très facilement 

1. Cliquez sur “Create Test Execution” → All Test 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/022e20c0-f847-43dc-b890-f76afeb74c07/Untitled.png)

1. Remplissez les champs proposé de cette façon : 
**Project** : Equipe QA 
**Issue Type** : Test Execution 
**Assignee** : Unassigned
**Summary** : Campagne Ciblée - [votre_version] - Test Execution
**Description** : Campagne Ciblée - [votre_version] - Test Execution 
**Affect version** : [votre_version]
**Label** : core
**Component/s** : Core 
**Affected Tribe** : Tribe Core Open source 

Gardez la case cochée "Redirect to Test Execution” et cliquez sur le bouton “Create”

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/93cc777a-1ca7-4417-97f2-c995a914da21/Untitled.png)

1. Pour retrouver votre test plan, cliquez rapidement sur la notification verte qui vient de s’afficher sinon je vous conseille de vous référencer au chapitre 3, 3ème étape.

Si vous avez suivi toutes ces diverses étapes, vous devriez normalement avoir votre test Plan et le Test execution que vous pourrez partager avec les membres de l’équipe ainsi qu’avec l’équipe des développeurs. 

Bonne Release.