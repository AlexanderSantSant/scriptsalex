# Menu dinamico de registros de Windows
$registros = @(Get-WinEvent -ListLog * -ErrorAction SilentlyContinue |
    Where-Object { $_.IsEnabled -and $_.RecordCount -gt 0 } |
    Sort-Object LogName)

do {
    Write-Host "`nMENU DE REGISTROS"
    for ($i = 0; $i -lt $registros.Count; $i++) {
        Write-Host "$($i + 1). $($registros[$i].LogName)"
    }
    Write-Host "0. Salir"
    $opcion = Read-Host "Elige una opcion"

    if ($opcion -eq "0") { break }
    $numero = 0
    if ([int]::TryParse($opcion, [ref]$numero) -and
        $numero -ge 1 -and $numero -le $registros.Count) {
        $registro = $registros[$numero - 1]
        Write-Host "Total de eventos: $($registro.RecordCount)"
        Get-WinEvent -LogName $registro.LogName -MaxEvents 12 -ErrorAction SilentlyContinue |
            Select-Object TimeCreated, Id, LevelDisplayName
    } else {
        Write-Host "Opcion no valida"
    }
} while ($true)
