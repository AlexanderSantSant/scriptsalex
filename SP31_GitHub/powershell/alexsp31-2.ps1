# Inicios de sesion entre dos fechas
param(
    [datetime]$inicio,
    [datetime]$fin
)

# Buscar los eventos 4624 del registro Seguridad
$eventos = Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4624
    StartTime = $inicio
    EndTime = $fin.Date.AddDays(1).AddTicks(-1)
}

# Mostrar fecha, hora y usuario; excluir SYSTEM y cuentas de equipo
foreach ($evento in $eventos) {
    $usuario = $evento.Properties[5].Value
    if ($usuario -and $usuario -ne "SYSTEM" -and $usuario -notlike "*$") {
        Write-Host $evento.TimeCreated $usuario
    }
}
