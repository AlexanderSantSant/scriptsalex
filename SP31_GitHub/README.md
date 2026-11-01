# SP31 - Automatizacion de tareas de mantenimiento

Scripts del supuesto practico SP31 (2.º ASIR).

- `powershell/alexsp31-2.ps1`: inicios de sesion entre fechas.
- `powershell/alexsp31-3.ps1`: menu de registros de eventos.
- `powershell/crear_tarea.ps1`: segunda tarea programada del apartado 6.
- `bash/alexsp31-4.sh` y `bash/programas.txt`: desinstalacion de paquetes.
- `bash/alexsp31-5.sh`: informe de errores de `/var/log`.
- `bash/alexsp31-7.sh`: monitorizacion de espacio en disco.
- `bash/diferencial.sh`, `total.sh`, `limpieza.sh`: copias con cron y anacron.
- `bash/alexsp31-9.sh`: copia espejo con rsync.
- `configuracion/alexsp31-9.service` y `.timer`: ejecucion diaria a las 22:00.
- `bash/alexsp31-10.sh`: estres y estadisticas de sysstat en JSON.

## Preparacion

En Ubuntu, copiar `alexsp31-7.sh` a `/home/sgy/`. Copiar los scripts de los apartados 8 y 9 a `/scralex/`, crear `/bacalex/` y darles permiso de ejecucion. Las tareas de cron y anacron estan en `configuracion/`. Copiar los archivos `.service` y `.timer` a `/etc/systemd/system/`, ejecutar `sudo systemctl daemon-reload` y `sudo systemctl enable --now alexsp31-9.timer`.

Instalar los paquetes necesarios: `sudo apt install rsync sysstat stress-ng jq`.

En Windows Server, ejecutar PowerShell como administrador cuando sea necesario. Ejemplo del apartado 2: `./alexsp31-2.ps1 -inicio '2026-10-01' -fin '2026-10-30'`.

**Importante:** revisar las rutas y probar los scripts en tus maquinas antes de entregar. `programas.txt` es solo un ejemplo y desinstala paquetes reales. El apartado 8 sigue el enfoque sencillo de copias de archivos modificados en los ultimos siete dias, no una copia diferencial estricta respecto a la ultima copia total. Las capturas simuladas no acreditan una ejecucion real.
