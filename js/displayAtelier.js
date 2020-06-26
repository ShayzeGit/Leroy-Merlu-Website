let h2 = document.getElementById("h2");
let text = document.getElementById("text");

function removeText(){
    while (text.hasChildNodes()){
        text.removeChild(text.firstChild);
    }
}

function display1(){
    removeText();
    h2.textContent= "Atelier 1";

    let p1 = document.createElement("p");
    p1.textContent = "Pour le premier atelier nous avons fait de l'algorithmie sur Larp qui est un logiciel compatible uniquement avec windows xp.";
    text.appendChild(p1);
    //ajout d'un paragraphe
    let p2 = document.createElement("p");
    p2.textContent ="Nous avons donc utilisé une machine virtuelle (VirtualBox) afin de nous permettre de faire les exercices qui consistais en de l'algorithmie et des logigrammes.";
    text.appendChild(p2);

    let p3 = document.createElement("p");
    p3.textContent ="Puis le rôle de cette atelier était de configurer un raspberry pour que on puisse l'utiliser pour héberger notre site ainsi que notre base de donnée que nous utiliseront dans les prochains atelier. ";
    text.appendChild(p3);

    let p4 = document.createElement("p");
    p4.textContent ="Pour ce faire nous avons ouvert les ports 22 et 80 pour nous \n" +
        "permettre d'y accéder de l'extérieur, ensuite nous avons installer un firewall et pour finir apache qui nous à permis de nous connecter au raspberry comme à un serveur.";
    text.appendChild(p4);

    let p5 = document.createElement("p");
    p5.textContent ="Pour voir les exercices d'algorythmie, Cliquez sur 'Larp' ";
    text.appendChild(p5);

}

function display2(){
    removeText();
    h2.textContent= "Atelier 2";
    let p1 = document.createElement("p");
    p1.textContent = "Pour le second atelier nous avons crée et configurer une base de donnée avec toute les informations rangé par table et par colonne afin d'avoir une base solide pour commencer notre application";
    text.appendChild(p1);
    let p2 = document.createElement("p");
    p2.textContent = "Ensuite nous avons préparer plusieurs requêtes que nous pourrions utiliser plus tard tout au long du projet et nous les avons tester sur le raspberry pour voir si c'est dernière marchait correctement afin de ne pas avoir de soucis";
    text.appendChild(p2);
    let p3 = document.createElement("p");
    p3.textContent = "sur l'application. Pour finir, si vous souhaitez voir toutes les requêtes SQL que nous avons du faire, vous pouvez vous diriger vers la documentation.";
    text.appendChild(p3);
}

function display3(){
    removeText();
    h2.textContent= "Atelier 3";

    let p1 = document.createElement("p");
    p1.textContent = "Pour l'atelier 3 nous avons développer une application en java pour permettre aux administrateur d'effectuer des modifications sur les projets et y ajouter les dates de fin après avoir reçu les paiement et pour le client de pouvoir gérer, modifier des projets\n" +
        "existant ou en créer de nouveaux.";
    text.appendChild(p1);
    //ajout d'un paragraphe
}

function display4(){
    removeText();
    h2.textContent= "Atelier 4";
    let p1 = document.createElement("p");
    p1.textContent = "Le projet 4 quand à lui consistait à améliorer l'atelier 3.";
    text.appendChild(p1);
    let p2 = document.createElement("p");
    p2.textContent = "Son but était d'améliorer les petites failles dans l'application que l'on avait pas eu le temps de corriger ou même de voir.";
    text.appendChild(p2);
    let p3 = document.createElement("p");
    p3.textContent = "Pour finir, il nous à permis de rajouter quelques nouvelles fonctionnalité qui n'était pas présent sur l'application.";
    text.appendChild(p3);
}

function display5(){
    removeText();
    h2.textContent= "Atelier 5";
    let p1 = document.createElement("p");
    p1.textContent = "Pour finir, le but de l'atelier 5 était de crée un site web vitrine permettant de retracer notre parcours de A à Z depuis le début de notre projet digitalisé à la fin.";
    text.appendChild(p1);
    let p2 = document.createElement("p");
    p2.textContent = "";
    text.appendChild(p2);
}
