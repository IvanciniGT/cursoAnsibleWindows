Role cfacts
=========

Este rol siver para:
- Leer custom facts en máquinas windows y linux
- Guardar custom facts estáticos y dinámicos en máquinas windowns y linux.

Requirements
------------

Ninguno especial

Role Variables
--------------

### Directorio donde se guardan los facts en windows

windows_path: 'c:\temp'

### Custom facts que quiero leer / guardar

facts_list: []
#    -   name: ~


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
