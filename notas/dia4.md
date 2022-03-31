
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





App Web : Formulario DNI
            VVVV
            Java (y que el DNI está mal, que se devuelva, y no se intente meter en BBDD)
                 AQUI Medida de gracia!
            VVVV
            BBDD (y que el DNI está mal, que se devuelva). MINIMO
            
Validar el DNI?

Ley del pendulo 

A ----> B

Toda la lógica se hacia en BBDD
- logíca de negocio. PL/SQL < Hibernate 

Nada de lógica en BB .. Toda en la APP
logica de negocio en la APP !!!
logica de datos en BBDD - DNI 




-----------------------
PLAYBOOK:  1 vez cada semana / dia
Estuve ya ? SI? 
    Version... script        versionApache.ps1: 2.2.22
    Realmente está aquello funcionando
    Mirar en tiempo real si funciona

        Descargamos un Software **** 
            Problema: A veces descargo esto sin necesidad
        
        Pedimos que se instale (quizás no hace falta y ansible, listo que es...
        realmente el listo es el módulo de ansible: win_package)
        
        Borramos el Software
        
CUSTOM_FACT : Miga de pan!, marca en la puerta. Eh! Aqui ya he estado... y lo he dejado todo listo.
        > script        
    c:\archivos\versionApache.ps1


-----------------------
?? delegate_to: 
    Quizás me interesaría tener un repo donde tenga guardado una copia de todos los programas que instalo.
    
    
-----------------------
Instalar una aplicacion web

App web < variable
Requerimientos:
Apache >= 2.12




















Montar un program ansible que permita mandar custom facts (los que me de la gana) 
a maquinas windows o linux (las que me de la gana)
Para poder usarlo en play books mas complejos cuando me de la gana dentro de 1 año
