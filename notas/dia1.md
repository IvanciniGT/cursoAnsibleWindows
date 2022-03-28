# Qué es Ansible

Era una empresa.... Ansible Inc. 
Paso posteriormente a manos de Redhat.

Ansible hoy en día es una familia de productos de software.

## Ansible project < Esto es lo que habitualmente conocemos como ANSIBLE******

Distribuir software / ejecutar tareas en equipos remotos

## Ansible engine

Distribuir software / ejecutar tareas en equipos remotos

## Ansible AWX

Orquestadores de playbooks

## Ansible Tower

Orquestadores de playbooks

## Ansible galaxy

Repositorio online de "roles" de ansible

# Qué es Redhat?

Es otra empresa: Redhat Inc.

Son los autores de:
    (de pago)                           Productos up.stream (más completos, y con más funcionalidad)
    - Redhat Enterprise Linux: RHEL <   Fedora
    - Openshift                     <   Origin OKD
    - RH Openstack                  <   Openstack
    - JBoss                         <   Wildfly
    - RH Ceph                       <   Ceph
    - Ansible engine                <   Ansible project
    - Ansible Tower                 <   Ansible AWX
# Qué es Opensource?

Que el código fuente está accesible al público.
Todo software OpenSource tiene una licencia de uso: GPL, MIT, Apache


# Ansible project

Distribuir software
Ejecutar tareas en equipos remotos
Configurar sistemas remotos

Entornos remotos:
    - Equipo Linux
        Conexión: ssh
    - Equipo BSD:
        Router, firewalls (eq. de red)
        Conexión: ssh
    - Equipo Unix
        Conexión: ssh
    - Equipo Windows
        Conexión: winrm

## Conceptos básicos

MODULO: Es un programa creado normalmente por otras personas, que hacen una serie de tareas en
un entorno remoto para conseguir llegar a un estado determinado.

### Playbook
    
El equivalente a un script. 
Es un conjunto estructurado de estados, que siguen una determinada lógica.
Se escriben en un lenguaje de marcado de información que es YAML.

En un playbook, hablamos en lenguaje descriptivo, no procedural.
No le decimos a ansible lo que tiene que hacer (como hacemos al crear un script), 
le decimos lo que queremos conseguir... trabajo de Ansible es averiguar cómo hacerlo.

Idempotencia: Dejar el sistema en un estado consistente independientemente del estado inicial.

### Ficheros de inventario

Listados de entornos remotos, categorizados, parametrizados. 
Estos ficheros tienen 3 sintáxis diferentes:
    - .ini
    - .yaml
    - OTRA ??¿¿??¿ BUENA !

## Arquitectura

Ansible project (engine) es un software que corre en cualquier máquina LINUX (no en un servidor central), 
y que permite acceder y ejecutar tareas en entornos remotos, de cualquier tipo.

Ese ansible project/engine, lo voy a nutrir con:
- Playbooks                 |
- Ficheros de inventario    |   Almacenadas en un GIT


## Cómo nos comunicamos con la herramienta


## Windows

.net -> .net Core

WSL: Subsistema de Linux para windows.

Linux : Kernel de SO más usado en el mundo ! Android
                                             GNU/Linux < distribuciones

Todas estas son herramientas típicas de desarrolladores:
SCM: Source Code Management
     Sistemas de control de versión
     - git: Un hombrecillo, que otro fin de semana que tuvo: voy a hacer git.
     - cvs
     - svn

Tester => Programadores
Administración de sistemas => Os habeis convertido en PROGRAMADORES !

Cultura "Dev --> ops": AUTOMATIZAR qué? TODO lo que sea AUTOMATIZABLE 
AUTOMATIZAR = HAcer un programa que haga lo que yo hacía antes.

Playbook: Script ~ Scripts bash ~ Script psh: 
    Un programa que hace una secuencia de tareas, que antes hacia a mano



# YAML

Lenguaje de marcado de información:
HTML
 XML
JSON

ML: Markup language: Lenguaje de marcado: TAGS: Etiquetas
<etiqueta> valor </etiqueta>

YAML 
ain't
markup
language

docker, kubernetes
ansible
ms azure devops (TFS)
Configuración red SO Ubuntu

YAML se ha comido a JSON. El estandar YAML incluye el estandar JSON:
Todo documento JSON es un documento YAML




- Quiero un SQL Server:                     Siempre
- Con una determinada configuración:        Siempre
- Que quede un servicio configurado         Siempre
- Reinicio                                  Solo si hay cambios en la conf.
- Arrancado                                 Siempre

Pregunta... Qué pasa si he hecho cambios en la configuración...
Y si en la máquina ya tuviera un SQL Server en funcionamiento... ARRANCADITO !
                                C1  >>>  C2
                                
                                
A ansible le alimento con ficheros YAML.

Ansible ejecuta módulos. La comunicación entre Ansible y los módulos se hace mediante ficheros JSON.



Ordenador 1                                     Ordenador 2
Linux                                           Linux, Unix, BSD, Windows
python                                          python
Ansible    ----> sobre otro ordenador ---->     Trabajo remoto  
+ playbook
+ inventario



App: 
ficheros Configuración A > Reinicio
ficheros Configuración B > Reinicio
Ejecuto script BBDD
Y otros cientos de cosas!!!!!
Reinicio de la app


Pre_tasks
Handlers lanzados en pre_tasks
tasks
Handlers lanzados en tasks
Post_tasks
Handlers lanzados en post_tasks

Las tareas las clasificamos en PRE, TASKS, POST, en función de su naturaleza.