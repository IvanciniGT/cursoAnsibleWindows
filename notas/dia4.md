
Configuración del Apache la tenemos en GIT

Ansible                                                 Entorno remoto
Linux                                                   Windows, Linux, BSD, ...
Controlador                                             Administrado

Playbook
    Tareas
        Cada tarea se ejecuta en ??????
            debug?
    
    Tarea17: 
        La carpeta con el clonado donde queda, quien ejecuta git.
                                                        git clone REPO 
        git clone REPO 
        fichero ----------------------------------------> copiar
        
Al definir un task:
    - name:
      modulo:
        args..
      tags:
      loop:
      when:
      changed_when:
      failed_when:
      listen:
      notify:
      -------
      delegate_to: HOST           # Host en el que quiero que se haga la tarea
      
      MODULO: 
        local_action:               # Hace un delegate_to a localhost
            module: git
            args:
------------------------------
# Donde se hace la tarea??  En la maquina administrada, remoto, destino
-   name: Clonar repo de git     
    git:
        repo: 'URL DEL REPO'
        dest: 'Carpeta donde hacer el clonado'
------------------------------
# Donde se hace la tarea??  En la maquina controlador
-   name: Clonar repo de git     
    git:
        repo: 'URL DEL REPO'
        dest: 'Carpeta donde hacer el clonado'
    delegate_to: localhost
-   name: Clonar repo de git     
    local_action:   
        module: git
        repo: 'URL DEL REPO'
        dest: 'Carpeta donde hacer el clonado'
------------------------------
        
      
Controlador                                 Maquina 1
                                                Apache
                                                Certificado 1
                                            Maquina 2
                                                Apache
                                                Certificado 2
                                            Maquina 3
                                                Apache
                                                Certificado 3
                                            Maquina N
                                                Apache, confg.... puerto, servic...
                                            Maquina4
                                                Balanceador de Carga
                                                Configuración
                                                    - Maquina 1
                                                    - Maquina 2
                                                    - Maquina 3
                                                    - Maquina N
Playbook A de instalación de un balanceador
Playbook B de instalación de un Apache detrás del balanceador.
Instala Apache y dejarlo configurado: Playbook 20 tareas
                                               21 tareas
                                               +1 Vete a la maquina4 y da de alta este servidor 
                                                   de apache en la configuración