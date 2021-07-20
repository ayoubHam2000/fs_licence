en
conf t
exit
end


interface f0/0
ip address [reseau] [mask]
no shutdown
R1# show ip interface brief
clock rate 64000
R1# show ip route
ip route [reseau_to] [mask] [interface_other_router_connected_to]


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
*show table route of a pc*
netstat -r(linux or windows) or route print(windows)


-> Dans quel cas, est-il possible de configurer les routes avec le nomde l’interface physique comme passerelle
--> Uniquement dans le cas de point-to-point.
--> Dans le cas point-to-multipoint, on utilise l’adresse logique du prochain saut

## Rip v1
router rip
version 1
network [reseau]
show ip protocols
how ip route
*Créez une interface de loopback(virtuelle)*
int loopback 0
ip address [reseau] [mask]
Que signifie le masque 255.255.255.255?
-> diffusion à tous les éléments du réseau (hôtes, routeurs,)
*permet de faire propager une destination par défaut*
Router(config)# ip default-network @IP Réseau
*Ajouter une route par défaut dans un routeur Puis la rendre dynamique*
Kenitra(config)#iproute 0.0.0.0 0.0.0.0 212.217.10.1
Kenitra(config)#router rip
Kenitra(config-router)#default-information originates
*Empêcher d’envoie des paquets sur une interface*
#passive-interface Fa0/0 

## OSPF
*Activer le modeMD5sur interface vers un voisin.*
R(config-if)# ip ospf message-digest-key 1 md5 covid19
R(config-if)# ip ospf authentication message-digest (activer l’authentification sur une interface)
**FULL**
FULL signifie que les routeurs sur ce lien ont partagé leurs informations sur les états des liens.
**Intervalle de temps HELLO**
durée normale qu’un routeur OSPF envoie  son paquet HELLO aux voisins. Par défaut la durée est 10 secondes.
**Intervalle de temps DEAD**
si un routeur ne reçoit pas d’informations pendant 10s, il va attendre encore 10s, ...., au bout de 4 intervalles de temps HELLO, le voisin est supprimé de la table.
**Wild-card**
signifie le masque générique du réseau.
Ex. si le masque du réseau est 255.255.255.0, son masque générique est masque total/32 – masque réseau/24 = 0.0.0.255.
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

-----

router ospf [id]
network [reseau] [mask] area [area_number]


## staf
Testez à  nouveau la  communication  (ping)  entre P1et P2?  
-> non,  car  la  route  par  défaut  est supprimée.



## DHCP
R1(config) #ip dhcp excluded-address 10.0.0.1 10.0.0.10
R1(config) #ip dhcp pool [poolName]
R1(config) #network 10.0.0.0 255.0.0.0
R1(config) #default-router 10.0.0.1
R1(config) #dns-server 10.0.0.3
*connect a router2 with router1(DHCP)*
**select an interface (fast ethernet)**
interface [ip or name]
ip helper-address 200.1.1.1
*domain*
ip domain-nameuti.ac.ma

## Redistribution de routes RIP et OSPF
http://idum.fr/spip.php?article217
Routeur-central(config)#router rip
Routeur-central(config-router)#redistribute ospf 1
Routeur-central(config-router)#redistribute ospf 1 metric 5

Routeur-central(config)#router ospf 1
Routeur-central(config-router)#redistribute rip subnets
Routeur-central(config-router)#exit 

## DNS
ip dns server
ip domain-lookup
ip name-server 4.2.2.2

## other
arp -a
netstat
ipconfig/displaydns
ipconfig/all