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






