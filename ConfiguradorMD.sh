## Teste de instalação dos meus pacotes essenciais.
#!/bin/bash
SHELL=bin/sh
PATH=/sbin:/usr/sbin:/usr/bin:/bin

sistema=$(whoami) 

echo "+++++++++++++++++++++++++++++++++++++++++++"
echo "A senha root será solicitada para continuar"
echo "+++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "Atenção! ! !"
echo "O arquivo .sh deve estar na pasta Downloads"
echo "ou vc deve alterar algumas linhas do shell"
echo ""
echo "+++++++++++++++++++++++++++++++++++++"
echo "Serão baixados alguns arquivos"
echo "+++++++++++++++++++++++++++++++++++++"

sudo wget 'https://www.dropbox.com/s/ye2kacixq16hp9z/MDupgrader.tar.gz'

sudo tar --verbose --gzip --extract -f MDupgrader.tar.gz

sudo rm MDupgrader.tar.gz

subdir=$(sudo ls /home/)

if [ $subdir == $sistema ]
    then
    echo "OK!"
    else
    echo "
    ╔════•ೋೋ•════╗ 
    Encerrado !
    ╚════•ೋೋ•════╝
    "
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo ""
    echo "Você não concedeu acesso root ao instalador"
    echo "Ou aconteceu algum outro erro durante o processo"
    echo ""
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    exit
fi


echo "Iniciando a instalação dos pacotes necessários ao Funcionamento do seu computador ! ! !"
echo " "
echo " "
echo "●▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬●
░░░░░░░░░░░By Marlon░░░░░░░░░░░ 
●▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬●" 
sleep 2
echo ""
echo ""
echo ""
echo " º º º
█████████  º
█▄█████▄█  º
█▼▼▼▼▼
█ A partir de agora irei instalar algumas
    coisas por aqui . . .
█▲▲▲▲▲
█████████ º
 ██ ██     º
"
echo ""
echo ""
echo ""
if [ "/home/$sistema/Downloads/MDupgrader" ]
    then
    echo "++++++++++++++++++++++++++++++++++"
    echo "Tudo certo"
    echo "++++++++++++++++++++++++++++++++++"
    echo "."
    echo "."
    echo "."
    
    echo "Loading…"
    sudo apt-get update 
    sudo apt-get upgrade 
    sudo apt-get install kdenlive -y
    sudo apt-get install codeblocks -y
    sudo apt-get install vlc -y 
    sudo apt-get install texmaker -y 
    sudo apt-get install flameshot -y 
    sudo apt-get install okular -y 
    sudo apt-get install steam-launcher -y 
    sudo apt-get install cheese -y 
    sudo apt-get install pavucontrol -y
    sudo apt-get install obs-studio -y 
    sudo apt-get install xournal -y 
    sudo apt-get install bash-completion -y 
    sudo apt-get install gitg -y 
    sudo apt-get install gimp -y 
    sudo apt-get install wget -y 
    sudo apt-get install firefox-esr -y 
    ls -l /home/$sistema/Downloads/MDupgrader
    else
    echo "!!!!!!!!!!!!!!!!!!!!!!!"
    echo "Erro nos repositórios"
    echo "!!!!!!!!!!!!!!!!!!!!!!!"
fi

echo "++++++++++++++++++++++++++++++++++"
echo ""
echo "Instalação de Programas essenciais"
echo ""
echo "++++++++++++++++++++++++++++++++++"

sudo chmod +x /home/$sistema/Downloads/MDupgrader/install-reaper.sh
chmod +x /home/$sistema/Downloads/MDupgrader/netbeansjdk.sh
sudo $sh /home/acer/Downloads/MDupgrader/install-reaper.sh --install ~/.reaper --integrate-desktop --usr-local-bin-symlink --quiet
sudo $sh /home/$sistema/Downloads/MDupgrader/netbeansjdk.sh

echo "Instalando pacotes .deb"

sudo apt-get install -y libgconf-2-4 libappindicator3-0.1-cil libc++1

sudo dpkg -i /home/$sistema/Downloads/MDupgrader/dbeaver.deb
sudo dpkg -i /home/$sistema/Downloads/MDupgrader/discord.deb
sudo dpkg -i /home/$sistema/Downloads/MDupgrader/mysql-workbench.deb
sudo dpkg -i /home/$sistema/Downloads/MDupgrader/google-chrome.deb 
sudo apt-get autoremove
sudo apt --fix-broken install -y

mkdir /home/$sistema/.Appimage
mkdir /home/$sistema/.icones

cp /home/$sistema/Downloads/MDupgrader/icones/* /home/$sistema/.icones
cp /home/$sistema/Downloads/MDupgrader/appimages/* /home/$sistema/.Appimage
cp /home/$sistema/Downloads/MDupgrader/mysql-connector.deb /home/$sistema/.Appimage
sudo cp -r /home/$sistema/Downloads/MDupgrader/.bashrc /home/$sistema/

sudo chmod +x /home/$sistema/.Appimage/*


    echo "+++++++++++++++++++++++++++++++++++++++++"
    echo ""
    echo "Se chegamos aqui sem nenhuma mensagem"
    echo "de erro é porque deu tudo certo"
    echo ""
    echo "+++++++++++++++++++++++++++++++++++++++++"

    sudo apt-get update 
    sudo apt-get upgrade 

    echo "+++++++++++++++++++++++++++++++++++++++++"
    echo "Verifique se as pastas estão corretas"
    echo "+++++++++++++++++++++++++++++++++++++++++"
    echo ""
    echo "Se sim, tecle qualquer botão para finalizar a configuração"
    echo ""

    read finaly


exit
