Playbooks
    custom_facts < Linux medio bien resuelto
                   Windows falta mucho
    

Conjunto de tareas que reutilizar en el futuro para trabajar con Custom Facts... especialmente Windows
    - Cargar custom facts de forma sencilla y similar a Linux
    - Guardar custom facts de forma sencilla y similar a Linux

La idea es tener una variable (o varias) con información acerca de los custom facts a generar



Linux
Controlador                                                             Windows
archivo1.tpl.ps1             -----------------Playbook------>           archivo1.ps1

Que version está instalada de apache
echo "{{ PROGRAMA }}"
         ^^^^
         Lo inyecte en tiempo de ejecución ... porque ahñi es cuando tengo el valor de ALGO... lo he calculado
         
         
Playbook 1
Programa que instala Apache Tomcat
    Alli dentro de la maquina un fact con la versión de apache... o que es capaz de calcular en tiempo real la version de apache

DATO -> FACT



Playbook 2
Programa que instala un WebApp en ApacheTomcat ??? Le importa si tu maquina es Windows O Linux
DATO
Aqui tengo una variable que ya me viene en la conexion... que me dice la version.



Ansible Tower: 20 horas
    Orquestar Playbooks
        1º Ejecuto el pb 1 -> bien -> pb2--> p5
                            -> mal -> pb3  -->








----

# PLAYBOOK:

Un conjunto de plays

# PLAY:

Un conjunto de tasks??? Seguro??? Solo???
+ donde se ejecuta : hosts
+ gather_facts:
+ order inventario...
+ vars

# ROLE

Un conjunto de tasks
Con sus variables
PUNTO PELOTA !

Puede ejecutarse un role? NO... donde? si no tiene hosts

# Dentro de un playbook puedo pedir que se ejecute un role

Hasta ahora nuestros plays, tenían tareas. listados de tareas.
A partir de ahora, nuestros plays podrán tener alguna tarea... pocas.. si no tienen niguna mejor que mejor.
Lo que tendrán es roles que se ejecutarán.

Role: Permite crear un conjunto de tareas reutilizables

ROLE: 
    tasks/main.yaml             Aquí estarán las tareas que se deben ejecutar cuando desde un play
                                se solicite la ejecución del rol
    handlers/main.yaml          Handlers del role
    templates/                  Aquí pondremos ficheros que sean procesados con modulos:
                                    template
                                    win_template
                                    Lo que ponemos asquí por tanto son ficheros JINJA !!!
    files/                      Aquí pondremos ficheros que vayamos a copiar a un remoto... sin alterar
                                    copy
                                    win_copy
    vars/main.yaml              Variables internas que usa mi role. Nadie sabe que existen salvo yo
    defaults/main.yaml          Variables que la gente que vaya a usar mi role debe suministrar
    test/                       Playbook de prueba para que la gente sepa como usar este role y 
                                comprobar si funciona.



ROLE
Un role, puede hacer una única funcionalidad o varias... en funcion de la parametrización que quiera poner

Quiero poder pedir al role varias operaciones diferentes:

1- Lee los custom facts que a mi me interese de una máquina windows o linux

2- Guarda un custom_fact dinámico: script
    version windows
        ps1
    version posix
        sh

3- Guardar un dato (variable) como custom_fact
    version posix
        dato.fact (json)
    version windows 
        dato.ps1
        
