��    A      $  Y   ,      �     �  �   �     f     �     �     �     �     �     �     �  7   �     6     Q     V     m     |     �     �     �  )   �       ?     4   S     �  %   �  &   �     �  -   	     9	     A	  "   X	  6   {	  >   �	     �	     
  &   '
  M   N
  +   �
  6   �
  #   �
     #  .   3  '   b     �     �     �     �     �       G     ,   _     �     �  "   �     �     �     �                  (   3     \     v  1   �  �  �     ^  �   u     W     u     �     �     �  (   �            C   $     h     �  %   �     �     �  !   �     �       =   (     f  ?   y  E   �  (   �  6   (  -   _      �  2   �     �     �  .     8   7  E   p     �  !   �  2   �  e   #  4   �  B   �  .        0  8   E  4   ~  !   �     �  ,   �       !   2     T  ^   t  4   �          (  ,   -  &   Z     �     �  #   �     �      �  >   �  '   ;     c  A   |     +   %   $   /   1      &                   =   <      @      ?   *   ;              (   
      A       >             #      0       ,                                   .         "                                        '                   9   -   )   	   :   4   !           5   8   7   2                     3          6    
<action> is one of:
 
<name> is the device to create under %s
<device> is the encrypted device
<key slot> is the LUKS key slot number to modify
<key file> optional key file for the new key for luksAddKey action
 %s is not a LUKS partition
 %s: requires %s as arguments <device> <device> <key slot> <device> <name>  <device> [<new key file>] <name> <name> <device> Align payload at <n> sector boundaries - for luksFormat Argument <action> missing. BITS Can't open device: %s
 Command failed Command successful.
 Create a readonly mapping Display brief usage Do not ask for confirmation Failed to obtain device mapper directory. Help options: How many sectors of the encrypted data to skip at the beginning How often the input of the passphrase can be retried Key %d not active. Can't wipe.
 Key size must be a multiple of 8 bits PBKDF2 iteration time for LUKS (in ms) Print package version Read the key from a file (can be /dev/random) SECTORS Show this help message Shows more detailed error messages The cipher used to encrypt the disk (see /proc/crypto) The hash used to create the encryption key from the passphrase The size of the device The size of the encryption key The start offset in the backend device This is the last keyslot. Device will become unusable after purging this key. This will overwrite data on %s irrevocably. Timeout for interactive passphrase prompt (in seconds) Unable to obtain sector size for %s Unknown action. Verifies the passphrase by asking for it twice [OPTION...] <action> <action-specific>] add key to LUKS device create device dump LUKS partition information formats a LUKS device key %d active, purge first.
 key %d is disabled.
 key material section %d includes too few stripes. Header manipulation?
 memory allocation error in action_luksFormat modify active device msecs open LUKS device as mapping <name> print UUID of LUKS device remove LUKS mapping remove device resize active device secs show device status tests <device> for LUKS partition header unknown hash spec in phdr unknown version %d
 wipes key with number <key slot> from LUKS device Project-Id-Version: cryptsetup
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2007-01-02 16:49+0100
PO-Revision-Date: 2010-04-15 16:30+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:25+0000
X-Generator: Launchpad (build 18115)
 
<acción> es una de:
 
<name> es el dispositivo bajo el cual se crea %s
<device> es el dispositivo cifrado
<key slot> es el número de la ranura clave LUKS a modificar
<key file> archivo de clave opcional para la nueva clave de acción luksAddKey
 %s no es una partición LUKS
 %s: requiere %s como argumentos <dispositivo> <dispositivo> <ranura de clave> <dispositivo> <nombre>  <dispositivo> [<nuevo archivo de clave>] <nombre> <nombre> <dispositivo> Alinea la carga útil en <n>límites de sector - para el luksFormat Falta el argumento <acción>. BITS No se puede abrir el dispositivo: %s
 Orden fallida Orden satisfactoria.
 Crear un mapeado de sólo lectura Muestra un resumen de uso No pedir confirmación Fallo al obtener el directorio de asignación del dispositivo Opciones de ayuda: Cuantos sectores de los datos cifrados para omitir al principio Con qué frecuencia la entrada de la frase de paso puede reintentarse Clave %d no activada. No puede limpiar.
 El tamaño de la clave debe ser un múltiplo de 8 bits Tiempo de iteración PBKDF2 para LUKS (en ms) Imprimir la versión del paquete Lee la clave en un archivo (puede ser /dev/random) SECTORES Muestra este mensaje de ayuda Muestra más detalles de los mensajes de error El cifrado usado para cifrar el disco (ver /proc/crypto) El hash utilizado para crear la clave de cifrado desde la contraseña Tamaño del dispositivo El tamaño de la clave de cifrado Desplazamiento de inicio en el dispositivo backend Este es el último zócalo de clave. El dispositivo será inutilizable después de purgar esta clave. Sobrescribirá los datos en %s de forma irrevocable. Tiempo de espera para preguntar por la frase de paso (en segundos) Imposible obtener el tamaño de sector para %s Acción desconocida. Verifica la frase de paso preguntando por ella dos veces [OPCIÓN...] <acción> <especificación de acción>] añadir clave al dispositivo LUKS crear dispositivo volcar la información de la partición LUKS formatear el dispositivo LUKS clave %d activa, purgue primero.
 la clave %d está desactivada.
 La sección de material clave %d  incluye muy pocas lineas. ¿Manipulación de las cabeceras?
 error de asignación de memoria en action_luksFormat modificar el dispositivo activo mseg abre el dispositivo LUKS asociado a <nombre> imprimir UUID para el dispositivo LUKS eliminar la asignación LUKS eliminar dispositivo redimensionar el dispositivo activo seg mostrar el etado del dispositivo comprobar <dispositivo> para la cabecera de la partición LUKS especificacion hash desconocida en phdr versión desconocida %d
 borra clave con el número <ranura de clave> del dispositivo LUKS 