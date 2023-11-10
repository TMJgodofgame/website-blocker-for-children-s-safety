@echo off
setlocal

:: Ruta completa del archivo 'hosts' en la carpeta de descargas
set "ruta_origen=%userprofile%\Downloads\hosts"

:: Ruta completa de la carpeta 'etc' en System32
set "ruta_destino=C:\Windows\System32\drivers\etc"

:: Verificar si el archivo 'hosts' existe en la carpeta de descargas
if exist "%ruta_origen%" (
    :: Borrar el archivo 'hosts' existente en la carpeta 'etc'
    del "%ruta_destino%\hosts" /Q

    :: Mover el nuevo archivo a la carpeta 'etc'
    move "%ruta_origen%" "%ruta_destino%"
    echo Archivo 'hosts' movido correctamente a '%ruta_destino%'.
) else (
    echo El archivo 'hosts' no se encuentra en la carpeta de descargas.
)

pause
