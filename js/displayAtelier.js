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
    p2.textContent ="Nous avons donc utilisé une machine virtuelle (VirtualBox) afin de nous permettre de faire les exercices qui consistais en de l'algorithmie et des logigramme.";
    text.appendChild(p2);

    let p3 = document.createElement("p");
    p3.textContent ="Puis le second atelier notre objectif étais de configurer un raspberry pour que on puisse l'utiliser pour héberger notre site ainsi que notre base de donnée que nous feront dans les prochains atelier. ";
    text.appendChild(p3);

    let p4 = document.createElement("p");
    p4.textContent ="Pour ce faire nous avons ouvert les ports 22 et 80 pour nous \n" +
        "permettre d'y accéder de l'extérieur, ensuite nous avons installer un firewall et pour finir apache qui nous permet de nous connecter au raspberry comme a une serveur.";
    text.appendChild(p4);

}

function display2(){
    removeText();
    h2.textContent= "Atelier 2";
    let p1 = document.createElement("p");
    p1.textContent = "Pour le second atelier nous avons configurer la base de donnée et préparer les requêtes que nous allons avoir besoin plus tard tout au long du projet et nous les avons tester sur le raspberry sur lequel nous avons finis de préparer la base de donné pour le projet.";
    text.appendChild(p1);

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
    p1.textContent = "Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.Le projet 4 consiste lui en l'amélioration et la suite de l'atelier 3.";
    text.appendChild(p1);
}

function display5(){
    removeText();
    h2.textContent= "Atelier 5";
    let p1 = document.createElement("p");
    p1.textContent = "Pour le premier atelier nous avons fait de l'algorithmie sur Larp qui est un logiciel compatible uniquement avec windows xp.Pour le premier atelier nous avons fait de l'algorithmie sur Larp qui est un logiciel compatible uniquement avec windows xp.Pour le premier atelier nous avons fait de l'algorithmie sur Larp qui est un logiciel compatible uniquement avec windows xp.Pour le premier atelier nous avons fait de l'algorithmie sur Larp qui est un logiciel compatible uniquement avec windows xp.";
    text.appendChild(p1);
}
