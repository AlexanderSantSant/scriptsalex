# Crear una tarea programada que guarda la fecha cada dia
$accion = New-ScheduledTaskAction -Execute "powershell.exe" -Argument '-NoProfile -Command "Get-Date | Out-File C:echa_servidor.txt"'
$hora = New-ScheduledTaskTrigger -Daily -At "12:00"
Register-ScheduledTask -TaskName "alex_tarea2" -Action $accion -Trigger $hora
Get-ScheduledTask -TaskName "alex_tarea2" | Select-Object TaskName, State
