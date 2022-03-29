# Ansible

## Ansible project <<< Ansible

A este programa le nutrimos con ficheros:
- Playbook: Fichero YAML
- Inventario: ... alternaitvas varias a la hora de escribir un inventario.
Estos ficheros van a guardarse en un ??? git < SCM

Ansible se ejecuta en una máquina Linux -> Se conecta para hacer trabajos sobre:
- Windows: winrm
- Linux:   ssh
- Unix:    ssh
- BSD:     ssh

Es necesario python en ambos sitios:
- Máquina donde corre ansible
- Máquina a adminitrar remota

Ansible no sabe hacer mucho... que usa módulos que son los que saben cómo conseguir un estado en 
un entorno destino. 

Tenemos miles (solo oficiales +3k) de módulos

## Playbooks
- # play
    
    hosts:
    order:
    gather_facts:
    vars:
    pre_tasks:
    tasks:
    post_tasks:
    handlers:

$ ansible-playbook -i archivo-inventario.??? archivo-playbook.yaml

Al ejecutar un playbook, se ejecutan sus plays sobre los host elegidos del inventario.

Voy obteniendo un informe del resultado:
Tareas: (tasks): Estados:
- ok            Si la tarea ni había producido un problema, un error
- changed       Dentro de las tareas que acaban bien, si producen un cambio en el equipo administrado
- failed        Que producen un error
- skipped       Tareas que salto, que ignoro... cómo? when

# Al definir una tarea: task:
-   name: <NOMBRE>
    <MODULO>:                       # que se encarga de ejecutar las acciones necesarias
        <parametrizaciones del módulo>
    when: <CONDICION>               # Controla si se ejecuta el task
    changed_when: <CONDICION>       # Controla el tipo de salida/estado que produce la tareas
    failed_when:  <CONDICION>       # Controla el tipo de salida/estado que produce la tareas
    notify: NOMBRE DE TAREA HANDLER | NOMBRE DE EVENTO HANDLER
            # Tareas que se activaban si esta tarea acaba con estado: changed
    vars: # Variables espeíficas para una tarea.
    register: NOMBRE-NUEVA-VARIABLE

Existen sitios dentro de los ficheros YAML, donde escribimos código que puede incluir variables y 
otro tipo de operadores:
    when: <CONDICION>               
    changed_when: <CONDICION>       
    failed_when:  <CONDICION>       
    debug:
        var: <VARIABLE>

Existen sitios dentro de los ficheros YAML, donde escribimos TEXTOS (y deben ser textos, así lo 
requiere el esquema YAML de ansible)... Pero quiero que esos textos, incluyan valores de variables.
-> INTERPOLACION: Se utiliza una sintaxis... basada en un sistema de plantillas desarrollado para python
y que se llama: JINJA!

Cuando un módulo se ejecuta, el módulo ofrece una información de vuelta a ansible y al playbook.

# win_shell: Ejecutar comandos y scripts del cmd y la psh
    Codigo de salida:     0     TODO OK
                     o no 0     FALLO / ERROR
    Un proceso puede escribir en:
        - Salida Estandar
        - Salida de Error
        - Otras ... tantas como quiera:
            Fichero..
            Socket...
            
# En un conjunto de maquinas quiero instalar una aplicación: mysql, apache, web iis, sql server
# La aplicacion será una variable.
# Requiere de una configuración: Fichero 
# Servicio a nivel de SO. que haya que dejar configurado
# Puerto abrirlo en el firewall



Todo esto tiene sentido si voy a gestionar una infraestrcutura importante

Playbook : Servidores web
    Instala un servidor web
    
    Quiero una maquina lista para ser Servidor web con todo actualizado.
    
    
    inventario ... < les aplico el playbook cada semana
        Tener todo igual
        Tener todo actualizado
        Maquinas nuevas igual que las otras
    
    
    
Lenguaje informaticos:
    Programación
         bash
         psh
         java
         js
         python
    Modelado
        uml
    Queries
        sql
    Marcado de información:
            html
            xml
        sgml
        json
        yaml - Ansible - Declarando estados


gitlab y github
    CI/CD ~ Jenkins  YAML