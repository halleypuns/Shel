Para pesquisar por um pacote :
$ sudo pacman -Ss git

Para instalar um pacote :
$ sudo pacman -S git

Para exibir informações detalhadas sobre um determinado pacote :
$ sudo pacman -Si git

Para exibir a lista de arquivos de backup e seus estados de alterações :
$ sudo pacman -Qii git

Para ver a quantidade de arquivos instalados por um pacote :
$ sudo pacman -Qk git
> Verificação mais aprofundada :
$ sudo pacman -Qkk git

Para remover um pacote e suas depedências :
$ sudo pacman -Rs git

Pode-se também consultar a base de dados para saber qual pacote um arquivo no arquivo do sistema pertence:
$ pacman -Qo /caminho/para/nome_de_arquivo

Para consultar o banco de dados para saber de qual pacote remoto um arquivo pertence:
$ pacman -F /caminho/para/nome_de_arquivo

Para listar todos os pacotes que não são exigidos como dependências (órfãos):
$ pacman -Qdt

Para listar todos os pacotes explicitamente instalados e que não são necessários como dependências:
$ pacman -Qet

Para remover todos os pacotes em cache que não estão instalados atualmente e a base de dados de sincronização não utilizada, execute:
$ pacman -Sc

Para remover todos os arquivos do cache, use a opção de limpeza duas vezes, sendo essa a abordagem mais agressiva e que vai deixar nada na pasta de cache:
$ pacman -Scc

Faça o download de um pacote sem instalá-lo:
$ pacman -Sw nome_pacote

Instale um pacote "local" que não seja de um repositório remoto (ex., o pacote é do AUR):
$ pacman -U /caminho/para/pacote/nome_pacote-versão.pkg.tar.zst

Para manter uma cópia do pacote local no cache do pacman, use:
$ pacman -U file:///caminho/para/pacote/nome_pacote-versão.pkg.tar.zst

Instale um pacote "remoto" (não de um repositório indicado nos arquivos de configuração do pacman):
$ pacman -U http://www.exemplo.com/repo/exemplo.pkg.tar.zst

Pesquisar por um pacote que contenha um arquivo específico

Sincronize a base de dados de arquivos:
$ pacman -Fy

Pesquise por um pacote contendo um arquivo, p.ex.:
$ pacman -F pacman

Para ver versões antigas e novas dos pacotes disponíveis, descomente a linha "VerbosePkgLists" em /etc/pacman.conf. A saída de pacman -Syu será algo como:

Pacote (6)            Versão antiga  Versão nova    Alteração   Tamanho de download

extra/libmariadbclient  10.1.9-4     10.1.10-1      0.03 MiB       4.35 MiB
extra/libpng            1.6.19-1     1.6.20-1       0.00 MiB       0.23 MiB
extra/mariadb           10.1.9-4     10.1.10-1      0.26 MiB      13.80 MiB

