��    R      �  m   <      �  Q  �  `   C
  b   �
  0     p   8  k   �  #        9     V     m  )   �  	   �  3   �     �  �         �  ,   �  $   �     	           ?     _  #   ~  !   �     �     �  <   �  <   .  <   k  %   �      �     �          )     @     O     c     z     �  �   �  &   t     �     �     �  �   �  d   �     .  $   E  u   j  C   �  =   $     b  &   {     �  )   �     �  H   �  (   @  E  i  �   �  .   k  F   �  "   �  -        2  
   R     ]  2   p  $   �  ,   �  '   �  '        E     L     `     u     �     �     �     �     �  �  �  �  O  i   !  n   �  0   �  {   +   }   �   '   %!  #   M!     q!     �!  4   �!     �!  <   �!  "   &"  �   I"  8   �"  1   "#  =   T#  $   �#  *   �#  %   �#  %   $  5   .$  ,   d$     �$  (   �$  :   �$  :   %  :   N%  %   �%      �%  $   �%     �%  &   &     8&     J&     f&  "   ~&  $   �&  �   �&  5   �'  0   �'     (  #   $(  �   H(  i   >)     �)  !   �)  �   �)  B   i*  H   �*     �*  %   +     6+  8   N+     �+  L   �+  )   �+  x  ,  �   �-  >   b.  L   �.  "   �.  :   /     L/     l/     z/  ?   �/  %   �/  9   �/  ,   -0  .   Z0  	   �0     �0     �0     �0  
   �0  	   �0     �0     �0     �0         Q       R            "   	   -   G       F   N       $              2   .      !              =      >   H         P           5                        
       #          1         L          %                          6           *      (       I   ,            0   E      /      J   '      ?       +   :   )   ;   O      M   4       &   8                    9   B   <   A   K   7   @   3   D   C           killall -l, --list
       killall -V, --version

  -e,--exact          require exact match for very long names
  -I,--ignore-case    case insensitive process name match
  -g,--process-group  kill process group instead of process
  -y,--younger-than   kill processes younger than TIME
  -o,--older-than     kill processes older than TIME
  -i,--interactive    ask for confirmation before killing
  -l,--list           list all known signal names
  -q,--quiet          don't print complaints
  -r,--regexp         interpret NAME as an extended regular expression
  -s,--signal SIGNAL  send this signal instead of SIGTERM
  -u,--user USER      kill only process(es) running as USER
  -v,--verbose        report if the signal was successfully sent
  -V,--version        display version information
  -w,--wait           wait for processes to die
   -                     reset options

  udp/tcp names: [local_port][,[rmt_host][,[rmt_port]]]

   -4,--ipv4             search IPv4 sockets only
  -6,--ipv6             search IPv6 sockets only
   -Z     show         SELinux security contexts
   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
   PID    start at this PID; default is 1 (init)
  USER   show only trees rooted at processes of this user

 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: Invalid option %s
 %s: no process found
 %s: unknown signal; %s -l lists signals.
 (unknown) /proc is not mounted, cannot stat /proc/self/stat.
 Bad regular expression: %s
 CPU Times
  This Process    (user system guest blkio): %6.2f %6.2f %6.2f %6.2f
  Child processes (user system guest):       %6.2f %6.2f %6.2f
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 1993-2010 Werner Almesberger and Craig Small

 Copyright (C) 1993-2012 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Copyright (C) 2009 Craig Small

 Could not kill process %d: %s
 Error attaching to pid %i
 Invalid namespace name Invalid option Invalid time format Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Memory
  Vsize:       %-10s
  RSS:         %-10s 		 RSS Limit: %s
  Code Start:  %#-10lx		 Code Stop:  %#-10lx
  Stack Start: %#-10lx
  Stack Pointer (ESP): %#10lx	 Inst Pointer (EIP): %#10lx
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Page Faults
  This Process    (minor major): %8lu  %8lu
  Child Processes (minor major): %8lu  %8lu
 Press return to close
 Process with pid %d does not exist.
 Process, Group and Session IDs
  Process ID: %d		  Parent ID: %d
    Group ID: %d		 Session ID: %d
  T Group ID: %d

 Process: %-14s		State: %c (%s)
  CPU#:  %-3d		TTY: %s	Threads: %ld
 Scheduling
  Policy: %s
  Nice:   %ld 		 RT Priority: %ld %s
 Signal %s(%s%d) ? (y/N)  Specified filename %s does not exist.
 TERM is not set
 Unable to open stat file for pid %d (%s)
 Unknown local port AF %d
 Usage: killall [-Z CONTEXT] [-u USER] [ -eIgiqrvw ] [ -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 output 8 bit clean streams.
    -n don't display read/write from fd headers.
    -c peek at any new child processes too.
    -d remove duplicate read/writes from the output.
    -V prints version info.
    -h prints this help.

  Press CTRL-C to end output.
 Usage: prtstat [options] PID ...
       prtstat -V
Print information about a process
    -r,--raw       Raw display of information
    -V,--version   Display version information and exit
 You can only use files with mountpoint options You cannot search for only IPv4 and only IPv6 sockets at the same time You must provide at least one PID. all option cannot be used with silent option. asprintf in print_stat failed.
 disk sleep fuser (PSmisc) %s
 killall: %s lacks process entries (not mounted ?)
 killall: Bad regular expression: %s
 killall: Cannot get UID from process status
 killall: Maximum number of names is %d
 killall: skipping partial match %s(%d)
 paging peekfd (PSmisc) %s
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 running sleeping traced unknown zombie Project-Id-Version: psmisc
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2014-02-02 17:04+1100
PO-Revision-Date: 2012-08-23 14:55+0000
Last-Translator: Monkey <monkey.libre@gmail.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:14+0000
X-Generator: Launchpad (build 18115)
        killall -l, --list
       killall -V, --version

  -e,--exact          requiere coincidencia exacta para nombres muy largos
  -I,--ignore-case    no diferencia mayúsculas/minúsculas en el nombre del proceso
  -g,--process-group  finaliza un grupo de procesos en lugar de un proceso
  -y,--younger-than   finaliza procesos anteriores a TIEMPO
  -o,--older-than     finaliza procesos posteriores a TIEMPO
  -i,--interactive    pide confirmación antes de finalizar
  -l,--list           lista todos los nombres de señales conocidas
  -q,--quiet          no imprimir quejas
  -r,--regexp         interpreta NOMBRE como una expresión regular extendida
  -s,--signal SEÑAL  envía esta señal en lugar de SIGTERM
  -u,--user USUARIO   finaliza sólo proceso(s) ejecutados como USUARIO
  -v,--verbose        informa si la señal fue enviada correctamente
  -V,--version        muestra información de la versión
  -w,--wait           espera a que los procesos finalicen
   -                     opciones de reinicio

  nombres udp/tcp: [local_port][,[rmt_host][,[rmt_port]]]

   -4,--ipv4             buscar solamente zócalos IPv4
  -6,--ipv6             buscar solamente zócalos IPv6
   -Z     mostrar contextos de seguridad SELinux
   -Z,--contexto REGEXP matar solamente proceso(s) teniendo contexto
                      (debe preceder otros argumentos)
   PID    comienza en este PID; por defecto es 1 (init)
  USER   solo muestra arboles que partan del proceso de este usuario

 %*s USUARIO        ORDEN DE ACCESO PID
 %s está vacío (¿está montado?)
 %s: Opción inválida %s
 %s: proceso no encontrado
 %s: señal desconocida; %s -l para listar señales.
 (desconocido) /proc no está montado, es es posible crear /proc/self/stat
 Expresión regular incorrecta: %s
 Tiempo de CPU
  Este proceso    (usuario sistema invitado blkio): %6.2f %6.2f %6.2f %6.2f
  Procesos hijos (usuario sistema invitado):       %6.2f %6.2f %6.2f
 No se pueden obtener las caracteristicas de la terminal
 No se puede reservar memoria para el proceso: %s
 No se puede encontrar el número de dispositivo del zócalo.
 No se puede encontrar el usuario %s
 No se puede abrir el directorio /proc: %s
 No se puede abrir /proc/net/unix: %s
 No se puede abrir el zócalo de red.
 No se puede abrir el archivo de protocolo «%s»: %s
 No se puede resolver el puerto local %s: %s
 No se puede verificar %s: %s
 No se puede verificar el archivo %s: %s
 Copyright (C) 1993-2009 Werner Almesberger y Craig Small

 Copyright (C) 1993-2010 Werner Almesberger y Craig Small

 Copyright (C) 1993-2012 Werner Almesberger y Craig Small

 Copyright (C) 2007 Trent Waddington

 Copyright (C) 2009 Craig Small

 No se pudo cerrar el proceso %d: %s
 Error adjuntando al pid %i
 Nombre de espacio de nombres inválido Opción inválida Formato de fecha no válido Matar %s(%s%d) ? (y/N)  ¿Finalizar el proceso %d ? (y/N)  %s(%s%d) eliminado con la señal %d
 Memoria
  Vsize:       %-10s
  RSS:         %-10s 		 Límite RSS: %s
  Código de inicio:  %#-10lx		 Código de parada:  %#-10lx
  Comienzo de pila: %#-10lx
  Puntero de pila (ESP): %#10lx	 Inst Puntero (EIP): %#10lx
 La opcion de espacio de nombre requiere un argumento. No se ha dado ninguna especificación de proceso No se encontraron procesos.
 No existe el nombre de usuario: %s
 PSmisc viene ABSOLUTAMENTE SIN GARANTIA.
Este software es libre, y tiene la libertad de redistribuirlo bajo
los términos de la Licencia Pública General GNU (GNU GPL).
Para más información sobre este tema, vea los archivos nombrados COPYING.
 Fallos de página
  Este proceso    (menor mayor): %8lu  %8lu
  Procesos hijos (menor mayor): %8lu  %8lu
 Presione retorno para cerrar
 El proceso con pid %d no existe.
 Proceso, grupo e ID de sesión
  ID de proceso: %d		  ID padre: %d
    ID de grupo: %d		 ID de sesión: %d
  ID de grupo T: %d

 Proceso: %-14s		Estado: %c (%s)
  CPU#:  %-3d		TTY: %s	Hilos: %ld
 Programación
  Directiva: %s
  Buena:   %ld 		 Prioridad de RT: %ld %s
 ¿Señal %s(%s%d) ? (y/N)  El nombre especificado %s no existe.
 TERM no está definido
 No es posible abrir el archivo stat para el pid %d (%s)
 Puerto local AF desconocido %d
 Uso: killall [-Z CONTEXTO] [-u USUARIO] [ -eIgiqrvw ] [ -SEÑAL ] NOMBRE...
 Uso: killall [OPCIÓN]... [--] NOMBRE...
 Uso: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 saca flujos limpios de 8 bit.
    -n no muestra lectura/escritura de las cabeceras fd.
    -c mira también cualquier nuevo proceso hijo.
    -d elimina lecturas/escrituras duplicadas de la salida.
    -V imprime información de la versión.
    -h imprime esta ayuda.

  Pulse CTRL-C para finalizar la salida.
 Uso: prtstat [opciones] PID ...
       prtstat -V
Imprime información sobre un proceso
    -r,--raw       Muestra en bruto de información
    -V,--version   Muestra información de la versión y sale
 Solamente puede usar archivos con opciones de punto de montaje No se pueden buscar zocalos IPv4 solamente y zocalos IPv6 solamente a la vez Debe proporcionar al menos un PID. la opción all no se puede utilizar con la opción silent. asprintf en print_stat falló.
 disco dormido fuser (PSmisc) %s
 killall: %s no tiene entradas de proceso (¿No está montado?)
 killall: mala expresión regular :%s
 killall: Imposible obtener el UID del estado del proceso
 kilall: Ee número máximo de nombres es %d
 kilall: omitir la coincidencia parcial %s(%d)
 paginando peekfd (PSmisc) %s
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 ejecutando durmiendo traceado desconocido zombie 