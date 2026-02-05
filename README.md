EvilHack port for FreeBSD
=========================

#### 1/ Go to the games port directory.

```
[root@reseau99 /home/util01]# cd /usr/ports/games
[root@reseau99 /usr/ports/games]# 
```


#### 2/ Clone the Evilhack repository.

```
[root@reseau99 /usr/ports/games]# git clone https://github.com/HackTechDev/EvilHack_Port_FreeBSD.git evilhack
```

```
[root@reseau99 /usr/ports/games]# cd evilhack/
```


#### 3/ Compile the game.

```
[root@reseau99 /usr/ports/games/evilhack]# make
```


#### 4/ Change the owner of the game directory.  

```
[root@reseau99 /usr/ports/games/evilhack]# cd /home/util01/
[root@reseau99 /home/util01]# chown -R util01:util01 games
```


#### 5/ Play the Evilhack game.

```
[util01@reseau99 ~]$ cd games/
[util01@reseau99 ~/games]$ ./evilhack
```
