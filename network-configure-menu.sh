function configure-network () {
  echo
  echo "1) Estado del servicio"
  echo "2) Reiniciar servicio"
  echo "3) Parar el servicio"
  echo "4) Configurar Interfaces"
  echo "5) Configurar DNS"
  echo 
  echo CTRL + C para salir 
  echo
  read -p "Introduzca numero del menu: " menu
  
  clear
  
  if [ -z "$menu" ]; then
    echo Introduczca un numero valido de la lista
    configure-network
  fi
  
  if [ $menu -eq 1 ]; then
  systemctl status NetworkManager
  clear
  fi
  
  if [ $menu -eq 2 ]; then
    systemctl restart NetworkManager
    echo Servicio reiniciado con exito.
    configure-network
  fi
  
  if [ $menu -eq 3 ]; then
    systemctl stop NetworkManager
    echo Servicio parado con exito. 
    configure-network
  fi
  
  if [ $menu -eq 4 ]; then
    nano /etc/network/interfaces
  fi
  
  if [ $menu -eq 5 ]; then
    nano /etc/resolv.conf
  fi
  
  configure-network
}
