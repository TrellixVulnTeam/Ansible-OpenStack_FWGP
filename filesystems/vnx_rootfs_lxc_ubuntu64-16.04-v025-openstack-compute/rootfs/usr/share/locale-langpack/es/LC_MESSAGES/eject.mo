��    O      �  k         �  $   �  &   �  )         /  #   P  -   t  *   �  +   �  =   �  )   7  ;   a  <   �  @   �      	  :   <	     w	     �	      �	     �	  $   �	     

     '
  (   F
     o
     �
     �
     �
     �
     �
  '      &   (  "   O  $   r     �  $   �     �      �  #     )   ;  ,   e  0   �  "   �     �  /         0     P     n      �  !   �      �  #   �          (  ?   @  4   �  -   �  4   �  4     $   M  &   r  ,   �     �  "   �       ;     *   V     �     �  %   �     �  &   �  �      �  �   �  5   r     �     �     �    �  !   g  2   �  9   �  1   �  +   (  =   T  6   �  <   �  X     ?   _  T   �  V   �  Q   K  3   �  F   �  +     /   D  *   t  !   �  8   �  "   �  %     ;   C          �      �  '   �     �  (     7   E  4   }  &   �  )   �  &     +   *  "   V  /   y  8   �  2   �  5      9   K   +   �   "   �   2   �   %   !  $   -!  #   R!  0   v!  =   �!  0   �!  9   "     P"     g"  g   �"  G   �"  A   2#  E   t#  E   �#  +    $  -   ,$  =   Z$  !   �$  $   �$     �$  @   �$  4   =%  '   r%     �%  0   �%  0   �%  8   &  r  M&    �*  �   �+  7   �,     �,  (   �,     -     
                 1      M                                        !       H   5       0       %          /   ?             '   	   $   K   *          N   F   4                 I          +      7   2          >   9   D   E   J   L   O   B   "                          A       ,   @   )      :           #              &   <   .       C   ;       (       8   =   6   -       3                 G    %s: %s doesn't exist, skipping call
 %s: %s is encrypted on real device %s
 %s: CD-ROM auto-eject command failed: %s
 %s: CD-ROM eject command failed
 %s: CD-ROM eject command succeeded
 %s: CD-ROM load from slot command failed: %s
 %s: CD-ROM select disc command failed: %s
 %s: CD-ROM select speed command failed: %s
 %s: CD-ROM select speed command not supported by this kernel
 %s: CD-ROM tray close command failed: %s
 %s: CD-ROM tray close command not supported by this kernel
 %s: CD-ROM tray toggle command not supported by this kernel
 %s: Could not restore original CD-ROM speed (was %d, is now %d)
 %s: FindDevice called too often
 %s: IDE/ATAPI CD-ROM changer not supported by this kernel
 %s: SCSI eject failed
 %s: SCSI eject succeeded
 %s: `%s' can be mounted at `%s'
 %s: `%s' is a link to `%s'
 %s: `%s' is a multipartition device
 %s: `%s' is mounted at `%s'
 %s: `%s' is not a mount point
 %s: `%s' is not a multipartition device
 %s: `%s' is not mounted
 %s: closing tray
 %s: could not allocate memory
 %s: default device: `%s'
 %s: device is `%s'
 %s: device name is `%s'
 %s: disabling auto-eject mode for `%s'
 %s: enabling auto-eject mode for `%s'
 %s: error while allocating string
 %s: error while finding CD-ROM name
 %s: error while reading speed
 %s: exiting due to -n/--noop option
 %s: expanded name is `%s'
 %s: floppy eject command failed
 %s: floppy eject command succeeded
 %s: invalid argument to --auto/-a option
 %s: invalid argument to --cdspeed/-x option
 %s: invalid argument to --changerslot/-c option
 %s: invalid argument to -i option
 %s: listing CD-ROM speed
 %s: maximum symbolic link depth exceeded: `%s'
 %s: restored original speed %d
 %s: saving original speed %d
 %s: selecting CD-ROM disc #%d
 %s: setting CD-ROM speed to %dX
 %s: setting CD-ROM speed to auto
 %s: tape offline command failed
 %s: tape offline command succeeded
 %s: toggling tray
 %s: too many arguments
 %s: tried to use `%s' as device name but it is no block device
 %s: trying to eject `%s' using CD-ROM eject command
 %s: trying to eject `%s' using SCSI commands
 %s: trying to eject `%s' using floppy eject command
 %s: trying to eject `%s' using tape offline command
 %s: unable to eject, last error: %s
 %s: unable to exec umount of `%s': %s
 %s: unable to find or open device for: `%s'
 %s: unable to fork: %s
 %s: unable to open /etc/fstab: %s
 %s: unable to open `%s'
 %s: unable to read the speed from /proc/sys/dev/cdrom/info
 %s: unmount of `%s' did not exit normally
 %s: unmount of `%s' failed
 %s: unmounting `%s'
 %s: unmounting device `%s' from `%s'
 %s: using default device `%s'
 %s: using device name `%s' for ioctls
 Eject version %s by Jeff Tranter (tranter@pobox.com)
Usage:
  eject -h				-- display command usage and exit
  eject -V				-- display program version and exit
  eject [-vnrsfqpm] [<name>]		-- eject device
  eject [-vn] -d			-- display default device
  eject [-vn] -a on|off|1|0 [<name>]	-- turn auto-eject feature on or off
  eject [-vn] -c <slot> [<name>]	-- switch discs on a CD-ROM changer
  eject [-vn] -t [<name>]		-- close tray
  eject [-vn] -T [<name>]		-- toggle tray
  eject [-vn] -i on|off|1|0 [<name>]	-- toggle manual eject protection on/off
  eject [-vn] -x <speed> [<name>]	-- set CD-ROM max speed
  eject [-vn] -X [<name>]		-- list CD-ROM available speeds
Options:
  -v	-- enable verbose output
  -n	-- don't eject, just show device found
  -r	-- eject CD-ROM
  -s	-- eject SCSI device
  -f	-- eject floppy
  -q	-- eject tape
  -p	-- use /proc/mounts instead of /etc/mtab
  -m	-- do not unmount device even if it is mounted
 Long options:
  -h --help   -v --verbose      -d --default
  -a --auto   -c --changerslot  -t --trayclose  -x --cdspeed
  -r --cdrom  -s --scsi         -f --floppy     -X --listspeed     -q --tape
  -n --noop   -V --version
  -p --proc   -m --no-unmount   -T --traytoggle
 Parameter <name> can be a device file or a mount point.
If omitted, name defaults to `%s'.
By default tries -r, -s, -f, and -q in order until success.
 eject version %s by Jeff Tranter (tranter@pobox.com)
 unable to open %s: %s
 usage: volname [<device-file>]
 volname Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2012-02-20 00:35+0100
PO-Revision-Date: 2012-12-26 07:35+0000
Last-Translator: Adolfo Jayme <fitoschido@gmail.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 16:13+0000
X-Generator: Launchpad (build 18115)
 %s: %s no existe, omitir llamada
 %s: %s está codificado en el dispositivo real %s
 %s: la orden de autoexpulsión del CD-ROM ha fallado: %s
 %s: la orden de expulsión del CD-ROM ha fallado
 %s: la orden de expulsión ha sido exitosa
 %s: la inserción desde la bandeja del CD-ROM ha fallado: %s
 %s: la selección del lector de CD-ROM ha fallado: %s
 %s: la selección de la velocidad del CD-ROM ha fallado: %s
 %s: la orden de selección de velocidad del CD-ROM no está permitida por éste núcleo
 %s: la orden de cierre de la bandeja del CD-ROM ha fallado: %s
 %s: la orden de cierre de la bandeja del CD-ROM no esta permitida por éste núcleo
 %s: la orden de intercambio de bandeja del CD-ROM no está permitida por este núcleo
 %s: No se puede restaurar la velocidad del CD-ROM original (era %d, ahora es %d)
 %s: se llama con demasiada frecuencia a FindDevice
 %s: el cambiador IDE/ATAPI CD-ROM no está permitido por este núcleo
 %s: la orden de expulsión SCSI ha fallado
 %s: la orden de expusión SCSI ha sido exitosa
 %s: «%s» no puede ser montado en «%s»
 %s: «%s» es un enlace a «%s»
 %s: «%s» es un dispositivo con múltiples particiones
 %s: «%s» esta montado en «%s»
 %s: «%s» no es un punto de montaje
 %s: «%s» no es un dispositivo con múltiples particiones
 %s: «%s» no está montado
 %s: cerrando la bandeja
 %s: no se pudo reservar memoria
 %s: dispositivo predeterminado: «%s»
 %s: el dispositivo es «%s»
 %s: el nombre del dispositivo es «%s»
 %s: desactivando el modo de autoexpulsión para «%s»
 %s: activando el modo de autoexpulsión para «%s»
 %s: error mientras se asignaba cadena
 %s: error al buscar el nombre del CD-ROM
 %s: error mientras se leía velocidad
 %s: saliendo debido a la opción -n/--noop
 %s: el nombre extendido es «%s»
 %s: la orden de expulsión del disquete falló
 %s: la orden de expulsión del disquete ha sido exitosa
 %s: argumento inválido para la opción --auto/-a
 %s: argumento inválido para la opción --cdspeed/-x
 %s: argumento inválido para la opción --changerslot/-c
 %s: argumento inválido para la opción -i
 %s: mostrando velocidad de CD-ROM
 %s: profundidad de elace máxima excedida: «%s»
 %s: velocidad original restaurada %d
 %s: guardando velocidad original %d
 %s: seleccionando disco CD-ROM #%d
 %s: estableciendo la velocidad del CD-ROM a %dX
 %s: estableciendo la velocidad del CD-ROM en modo automatico
 %s: la orden de desconexión de la cinta falló
 %s: la orden de desconexión de la cinta ha sido exitosa
 %s: cambiando bandeja
 %s: demasiados argumentos
 %s: se intentó usar «%s» como un nombre de dispositivo, pero no es un dispositivo de bloque válido
 %s: intentando expulsar «%s» usando la orden de expulsión de CD-ROM
 %s: intentando expulsar «%s» usando la orden de expulsion SCSI
 %s: intentando expulsar «%s» usando la orden de ejecucion disquete
 %s: intentando expulsar «%s» usando la orden de cinta desconectada
 %s: incapaz de expulsar, último error: %s
 %s: incapaz de ejecutar umount of «%s»: %s
 %s: incapaz de encontrar o abrir el dispositivo para: «%s»
 %s: incapaz de hacer un fork: %s
 %s: incapaz de abrir /etc/fstab: %s
 %s: incapaz de abrir «%s»
 %s: incapaz de leer la velocidad desde /proc/sys/dev/cdrom/info
 %s: el desmontaje de «%s» no terminó normalmente
 %s: el desmontaje de «%s» ha fallado
 %s: desmontando «%s»
 %s: desmontando dispositivo «%s» desde «%s»
 %s: usando el dispositivo predeterminado «%s»
 %s: usando el nombre del dispositivo «%s» para ioctls
 Eject versión %s por Jeff Tranter (tranter@pobox.com)
Uso:
  eject -h				-- muestra la ayuda sobre el uso y sale
  eject -V				-- muestra la versión del programa y sale
  eject [-vnrsfqpm] [<name>]		-- expulsa el dispositivo
  eject [-vn] -d			-- muestra el dispositivo por omisión
  eject [-vn] -a on|off|1|0 [<name>]	-- enciende y apaga la función de autoexplusión
  eject [-vn] -c <slot> [<name>]	-- cambia discos en un cambiador de CD-ROM
  eject [-vn] -t [<name>]		-- cierra la bandeja
  eject [-vn] -T [<name>]		-- conmuta la bandeja
  eject [-vn] -i on|off|1|0 [<name>]	-- enciende y apaga la protección de expulsión manual
  eject [-vn] -x <speed> [<name>]	-- establece la velocidad máxima del CD-ROM
  eject [-vn] -X [<name>]		-- lista las velocidades disponibles para el CD-ROM
Opciones:
  -v	-- activar la salida verbosa
  -n	-- no expulsa, sólo muestra el dispositivo encontrado
  -r	-- expulsa el CD-ROM
  -s	-- expulsa el dispositivo SCSI
  -f	-- expulsa el disco flexible
  -q	-- expulsa la cinta
  -p	-- utiliza /proc/mounts en lugar de /etc/mtab
  -m	-- no desmonta el dispositivo aún cuando este esté montado
 Opciones largas:
  -h --help   -v --verbose      -d --default
  -a --auto   -c --changerslot  -t --trayclose  -x --cdspeed
  -r --cdrom  -s --scsi         -f --floppy     -X --listspeed     -q --tape
  -n --noop   -V --version
  -p --proc   -m --no-unmount   -T --traytoggle
 El parámetro <nombre> puede ser un archivo de dispositivo o un punto de montaje.
Si se omite, el nombre predeterminado es «%s».
Por defecto pruebe -r, -s, -f, y -q en orden hasta tener éxito.
 eject versión %s por Jeff Tranter (tranter@pobox.com)
 incapaz de abrir %s: %s
 uso: volname [<archivo de dispositivo>]
 volname 