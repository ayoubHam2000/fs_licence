## ex02

il y'a des equipements sans fill comme tablet

## ex03

R1> enable
R1# conf t
R1(config)# ip dhcp pool P1
R1(config)# network 10.0.0.0 255.0.0.0
R1(config)# default-router 192.168.1.1
R1(config)# dns-server 0.0.0.0
R1(config)# ip dhcp excluded-address 10.0.0.100 10.0.0.1
*ordinateur a une address ip fix de 10.0.0.100*

## ex04 ??

## ex05 
ip de passerelle : 192.168.1.1
ip de serveur dns : 0.0.0.0
ip du pc proposer : 10.0.0.x
port 67

## --------------------------------------------------------

## ex 01
R4> enable
R4# conf t
        # router rip
        # v 2
        # network 212.217.100.64
        # network 212.217.100.32
        # network 212.217.100.16


## ex02

R4> enable
R4# conf t
        # router ospf
        # network 212.217.100.32 0.0.0.15 area 0
        # network 212.217.100.16 0.0.0.31 area 0
        # network 212.217.100.64 0.0.0.63 area 0

## q03 ex2

*ospf to rip*
#router rip
#redistribute ospf 1 metric 1

*rip to ospf*
#router ospf 1
#redistribute rip
#redistribute rip subnets

## q04 ex02 ??


## --------------------------------------------------------


## --------------------------------------------------------

## q01 ex04

Paquets LSP de R4
    * Connecte au voisin R5 sur le reseau 100.5.0.0/16, cout: 1
    * Connecte au voisin R2 sur le reseau 100.4.0.0/16, cout: 5
    * Connecte au voisin R3 sur le reseau 100.3.0.0/16, cout: 20

## q02 ex04

Paquets LSP de R1
    * Connecte au voisin R2 sur le reseau 100.2.0.0/16, cout: 10
    * Connecte au voisin R3 sur le reseau 100.1.0.0/16, cout: 5
Paquets LSP de R2
    * Connecte au voisin R1 sur le reseau 100.2.0.0/16, cout: 10
    * Connecte au voisin R4 sur le reseau 100.4.0.0/16, cout: 5
Paquets LSP de R3
    * Connecte au voisin R1 sur le reseau 100.1.0.0/16, cout: 5
    * Connecte au voisin R4 sur le reseau 100.3.0.0/16, cout: 20
Paquets LSP de R4
    * Connecte au voisin R3 sur le reseau 100.3.0.0/16, cout: 20
    * Connecte au voisin R2 sur le reseau 100.4.0.0/16, cout: 5
    * Connecte au voisin R5 sur le reseau 100.5.0.0/16, cout: 1
Paquets LSP de R5
    * Connecte au voisin R4 sur le reseau 100.5.0.0/16, cout: 1

## q03 ex04

*Reseaux directement connecter*
    * Reseau directement connecte 100.3.0.0/16
    * Reseau directement connecte 100.4.0.0/16
    * Reseau directement connecte 100.5.0.0/16
*Reseaux distants*
    * 100.2.0.0/16 via interface serie de R2 Se3/0, cout = 15
    * 100.1.0.0/16 via interface serie de R3 Se3/0, cout = 20