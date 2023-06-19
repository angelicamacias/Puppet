class angelica_training::service {
  
  #Ensure cups is running
  service { 'cups':
    ensure    => running,
    enable    => true,
  }
}

