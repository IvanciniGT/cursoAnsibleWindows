Playbooks
    Tarea. Estados
    Modulos. Programa externo que hace curro para ansible
    JINJA2.
-------------------------------------
** Inventarios
Modulos distinta naturaleza (windows)
Facts, customFacts
Roles < ansible-galaxy
AnsibleTower/AWX
--------------------------------------
Máquina Windows

--------------------------------------



# Inventarios

3 formatos diferentes:
- .ini          Muy sencillos... Muy poco potentes
- .yaml         Algo más complejo.... Mucho más potente.... Insufrible!
- hibrido       Este es el guay ! Lo mejor de los 2 mundos... encima MEJORADO MAS !!!
- OTRA ... Bonus track!


# Qué hay en los inventarios:
- En un inventario definimos máquinas/entornos remotos que administrar
- Cómo conectarnos con esas máquinas
- Características de las máquinas (Memoria, CPU,.... ) NADA !!!!!!!
- Clasificación de los entornos/máquinas
- Variables... que usar en los playbooks.


Maquinas: Puertos necesito abiertos en el firewall: 80, 8443, ...



$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file


print 'HOLA' 

print('HOLA')

python3 -m pip install --upgrade pip


echo