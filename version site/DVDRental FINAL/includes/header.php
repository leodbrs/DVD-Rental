<?php
if (isset($_SESSION['nom'], $_SESSION['prenom'], $_SESSION['nomutilisateur'], $_SESSION['vendeur'])) {
    $prenom = $_SESSION['prenom'];
    if ($_SESSION['vendeur'] == 1) {
        echo <<<EOT
        <header>
            <a href="/RT/1projet18/site/">
                <img src="/RT/1projet18/site/assets/img/logo.png" alt="">
                <span>DVD rental</span>
            </a>
        </header>
        <nav class="navigation">
            <ul class="leftnav">
                <li><a href="/RT/1projet18/site/">Accueil</a></li>
                <li><a href="/RT/1projet18/site/catalogue.php">Catalogue</a></li>
                <li><a href="/RT/1projet18/site/contact.php">Contact</a></li>
            </ul>
            <ul class="rightnav compte">
                <li><a href="/RT/1projet18/site/vendeur.php">Page vendeur ({$prenom})</a></li>
                <li><a href="/RT/1projet18/site/includes/deconnexion.php">Se déconnecter</a></li>
            </ul>
        </nav>
EOT;
    }
    elseif ($_SESSION['vendeur'] == 0) {
        echo <<<EOT
        <header>
            <a href="/RT/1projet18/site/">
                <img src="/RT/1projet18/site/assets/img/logo.png" alt="">
                <span>DVD rental</span>
            </a>
        </header>
        <nav class="navigation">
            <ul class="leftnav">
                <li><a href="/RT/1projet18/site/">Accueil</a></li>
                <li><a href="/RT/1projet18/site/catalogue.php">Catalogue</a></li>
                <li><a href="/RT/1projet18/site/contact.php">Contact</a></li>
            </ul>
            <ul class="rightnav compte">
                <li><a href="/RT/1projet18/site/panier.php">Panier</a></li>
                <li><a href="/RT/1projet18/site/client.php">Compte ({$prenom})</a></li>
                <li><a href="/RT/1projet18/site/includes/deconnexion.php">Se déconnecter</a></li>
            </ul>
        </nav>
EOT;
    }
}
else {
    echo <<<EOT
    <header>
        <a href="/RT/1projet18/site/">
            <img src="/RT/1projet18/site/assets/img/logo.png" alt="">
            <span>DVD rental</span>
        </a>
    </header>
    <nav class="navigation">
        <ul class="leftnav">
            <li><a href="/RT/1projet18/site/">Accueil</a></li>
            <li><a href="/RT/1projet18/site/catalogue.php">Catalogue</a></li>
            <li><a href="/RT/1projet18/site/contact.php">Contact</a></li>
        </ul>
        <ul class="rightnav">
            <li><a href="/RT/1projet18/site/connexion.php">Connexion</a></li>
            <li><a href="/RT/1projet18/site/inscription.php">Inscription</a></li>
        </ul>
    </nav>
EOT;
}
?>