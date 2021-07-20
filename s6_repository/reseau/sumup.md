*Table du routeur*
Réseau/sous réseau distant || Masque Réseau || Interface de sortie(physique)
0.0.0.0     0.0.0.0     serial2/1

*Quel est le rôle d’un routeur*
* réaliser le routage des paquets IP
* d’assurer l’interconnexion des réseaux différents 
*Quel type de port le routeur possède*
* Le port de console
* Le port auxiliaire
*Préciser les types d’interfaces d’un routeur*
* Interfaces LAN
* Interfaces WAN
*Le routeur possède des adresses*
* Le routeur possède plusieurs adresses IP, chacune par interface. 
*Modes de configuration du routeur*
f.Mode utilisateur (>)
g.Mode privilégié (#>)
*CIDR*
CIDR qui sont des routes résumées avec un masque de sous-réseau plus petit que le masque par classe de la route
*VLSM*
pour propager tous les réseaux avec leurs masques de sous-réseau appropriés
*FULL*
FULL signifie que les routeurs sur ce lien ont partagé leurs informations sur les états des liens.
*Intervalle de temps HELLO*
durée normale qu’un routeur OSPF envoie  son paquet HELLO aux voisins. Par défaut la durée est 10 secondes.
*Intervalle de temps DEAD*
si un routeur ne reçoit pas d’informations pendant 10s, il va attendre encore 10s, ...., au bout de 4 intervalles de temps HELLO, le voisin est supprimé de la table.
*Wild-card*
signifie le masque générique du réseau.
Ex. si le masque du réseau est 255.255.255.0, son masque générique est masque total/32 – masque réseau/24 = 0.0.0.255.
*Dans quel cas, est-il possible de configurer les routes avec le nomde l’interface physique comme passerelle*
--> Uniquement dans le cas de point-to-point.
--> Dans le cas point-to-multipoint, on utilise l’adresse logique du prochain saut

no ip route 0.0.0.0 0.0.0.0 serial 2/0


---------------------------------------------------------------
en
conf t
exit
end

interface f0/0
ip address [reseau] [mask]
no shutdown
clock rate 64000

## info
*Empêcher d’envoie des paquets sur une interface*
    #passive-interface Fa0/0 
*give a name*
    hostname R1
*mot de passe pour le mode privilégié*
    enable password [pass]
*Configurer un mot de passe pour l’accès console.(access sans IP)*
    line console 0
    password [pass]
    login
*un mot de passe pour l’accès telnet (access vertuel)*
    line vty 0 4
    password [pass]
    login
*banniere*
    banner motd # message #
*fichier de configuration initiale stocke dans NVRAM*
    R1# show start-up config
*La configuration en cours*
    R1# show running-config
*save changes*
    R1# copy running-config startup-config
*show protocols*
    R1# show ip protocols
*show ip route*
    R1# show ip route
*brief interface*
R1# show ip interface brief

## Routage statique
ip route [reseau_to] [mask] [interface_de_sortie]

## OSPF
router ospf [id]
network [reseau] [mask] area [area_number]

## RIP
router rip
version 1
network [reseau]

## DHCP
R1(config) #ip dhcp pool [poolName]
R1(config) #network 10.0.0.0 255.0.0.0
R1(config) #default-router 10.0.0.1
R1(config) #dns-server 10.0.0.3
R1(config) #ip dhcp excluded-address 10.0.0.1 10.0.0.10
*connect another router with router1 (DHCP)*
    **select an interface (fast ethernet)**
    interface [ip or name]
    ip helper-address 200.1.1.1
*domain*
    ip domain-nameuti.ac.ma
*quel est le coût associé à la sortie de chaque interface d’un routeur*
    show ip ospf int [interface_name]
*Comment ce coût a été calculé*
    Cost = Bande de référence (10^8 bits) / bande du lien. 
*changer les coûts deslien FastEthernet ou Sériedu routeur*
    R0(config)#int fa0/0
    R0(config-if)#ip ospf cost 10
    R0(config)#int Serial2/0
    R0(config-if)#bandwidth 64
*Trouver la bande passante correspondanteà ces interfaces*
    show ip ospf int [interface_name]
*neighbor*
    show ip ospf neighbor detail
*interfaces virtuelles*
    R(config)# int loopback 0
    R(config-if)# ip address [address] [mask]

## Redistribution de routes RIP et OSPF
http://idum.fr/spip.php?article217
*ospf to rip*
#router rip
#redistribute ospf 1 metric 1

*rip to ospf*
#router ospf 1
#redistribute rip
#redistribute rip subnets

## other
arp -a
netstat
ipconfig/displaydns
ipconfig/all
ping
*show table route of a pc*
netstat -r(linux or windows) or route print(windows)

## staf
Testez à  nouveau la  communication  (ping)  entre P1et P2?  
-> non,  car  la  route  par  défaut  est supprimée.