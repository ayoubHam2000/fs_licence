# staff
ping @address

enable secret cisco
enable password cisco

en
conf t

hostname [sethostname]

do wr
*or*
end
copy run
startup-config
*or*
copy running-config startup-config

show ip route
S -> static
R -> Rip
O -> OSPF

clear ip route *
no router eigrp 1

# routage static

interface [interface_name]
ip address [address] [mask]
no shutdown
exit

clock rate 64000

ip route [address_reseau] [mask_reseau] [interface_address]


# routage Rip v2

en
conf t
router rip
version 2
network [network directly connected]
no auto-summary


R 192.168.3.0/24 [120/2<- le nombre de saut] via 192.16.0.2

# routage OSPF

en
conf t

router ospf 1
network [reseau] [masl] area 0

interface se2/0
ip ospf cost 1

