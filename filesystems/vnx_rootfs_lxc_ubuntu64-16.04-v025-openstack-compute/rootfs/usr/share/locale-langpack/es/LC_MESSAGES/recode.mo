��    P      �  k         �  K   �  �    �   �  �   b	  8  *
  �  c  �     |  �  0   +  9   \  6   �  C   �               6     U     i  9   r     �     �     �     �  -   �  $     5   @  '   v  $   �  $   �  $   �          +  &   E     l     �  J   �  $   �          "  H   0     y     �     �     �     �     �  "   �     "  1   6     h  (   w     �     �     �  &   �          &     ?  "   N     q  0   �     �  (   �     �  �     �  �  "   D     g  �   �     
  &   )     P     e     ~  �   �  7   m     �  
   �     �     �  �  �  K   Q    �  �   �   +  N!  �  z"  �  d%  �   E'  �  �'  5   �)  F   �)  <   **  =   g*     �*     �*  #   �*     �*     	+  C   +     U+     o+     {+     �+  G   �+  ,   �+  U   ,  .   n,  6   �,  /   �,  1   -     6-  "   T-  0   w-     �-      �-  P   �-  -   7.     e.     �.  \   �.     �.     /  .   -/  %   \/     �/      �/  (   �/     �/  7   �/     +0  :   >0     y0     �0     �0  <   �0     1  "   !1     D1  1   T1  "   �1  :   �1  !   �1  &   2  !   -2  �   O2  �  �2  )   �5      6  �   6  %   �6  <   �6     47     K7     c7  �   ~7  8   v8     �8  
   �8     �8     �8        G       B   :   A   1      (   	          >              M   P       0             ;          F   !       '   .       $   3                     7   -         9   ,   *       #          5       E      )   2   4      @   ?       
       <           H                        +   =      C   D                  N          O       I   K   8          6                 &   J       "   L   %   /       
Copyright (C) 1990, 92, 93, 94, 96, 97, 99 Free Software Foundation, Inc.
 
Fine tuning:
  -s, --strict           use strict mappings, even loose characters
  -d, --diacritics       convert only diacritics or alike for HTML/LaTeX
  -S, --source[=LN]      limit recoding to strings and comments as for LN
  -c, --colons           use colons instead of double quotes for diaeresis
  -g, --graphics         approximate IBMPC rulers by ASCII graphics
  -x, --ignore=CHARSET   ignore CHARSET while choosing a recoding path
 
If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.  Similarly for optional arguments.
 
If none of -i and -p are given, presume -p if no FILE, else -i.
Each FILE is recoded over itself, destroying the original.  If no
FILE is specified, then act as a filter and recode stdin to stdout.
 
Listings:
  -l, --list[=FORMAT]        list one or all known charsets and aliases
  -k, --known=PAIRS          restrict charsets according to known PAIRS list
  -h, --header[=[LN/]NAME]   write table NAME on stdout using LN, then exit
  -F, --freeze-tables        write out a C module holding all tables
  -T, --find-subsets         report all charsets being subset of others
  -C, --copyright            display Copyright and copying conditions
      --help                 display this help and exit
      --version              output version information and exit
 
Operation modes:
  -v, --verbose           explain sequence of steps and report progress
  -q, --quiet, --silent   inhibit messages about irreversible recodings
  -f, --force             force recodings even when not reversible
  -t, --touch             touch the recoded files after replacement
  -i, --sequence=files    use intermediate files for sequencing passes
      --sequence=memory   use memory buffers for sequencing passes
 
Option -l with no FORMAT nor CHARSET list available charsets and surfaces.
FORMAT is `decimal', `octal', `hexadecimal' or `full' (or one of `dohf').
 
REQUEST is SUBREQUEST[,SUBREQUEST]...; SUBREQUEST is ENCODING[..ENCODING]...
ENCODING is [CHARSET][/[SURFACE]]...; REQUEST often looks like BEFORE..AFTER,
with BEFORE and AFTER being charsets.  An omitted CHARSET implies the usual
charset; an omitted [/SURFACE]... means the implied surfaces for CHARSET; a /
with an empty surface name means no surfaces at all.  See the manual.
 
Report bugs to <recode-bugs@iro.umontreal.ca>.
 
Usage: %s [OPTION]... [ [CHARSET] | REQUEST [FILE]... ]
   -p, --sequence=pipe     same as -i (on this system)
   -p, --sequence=pipe     use pipe machinery for sequencing passes
  done
  failed: %s in step `%s..%s'
 %s failed: %s in step `%s..%s' %s in step `%s..%s' %s to %s %sConversion table generated mechanically by Free `%s' %s %sfor sequence %s.%s *Unachievable* *mere copy* Ambiguous output Cannot complete table from set of known pairs Cannot invert given one-to-one table Cannot list `%s', no names available for this charset Charset %s already exists and is not %s Charset `%s' is unknown or ambiguous Child process wait status is 0x%0.2x Codes %3d and %3d both recode to %3d Dec  Oct Hex   UCS2  Mne  %s
 Expecting `..' in request Following diagnostics for `%s' to `%s' Format `%s' is ambiguous Format `%s' is unknown Free `recode' converts files between various character sets and surfaces.
 Identity recoding, not worth a table Internal recoding bug Invalid input LN is some language, it may be `c', `perl' or `po'; `c' is the default.
 Language `%s' is ambiguous Language `%s' is unknown Misuse of recoding library No character recodes to %3d No error No table to print No way to recode from `%s' to `%s' Non canonical input Pair no. %d: <%3d, %3d> conflicts with <%3d, %3d> Recoding %s... Recoding is too complex for a mere table Request `%s' is erroneous Request: %s
 Required argument is missing Resurfacer set more than once for `%s' Sequence `%s' is ambiguous Sequence `%s' is unknown Shrunk to: %s
 Sorry, no names available for `%s' Step initialisation failed Step initialisation failed (unprocessed options) Symbol `%s' is unknown Syntax is deprecated, please prefer `%s' System detected problem This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software Foundation,
Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 Try `%s %s' for more information.
 UCS2   Mne   Description

 Unless DEFAULT_CHARSET is set in environment, CHARSET defaults to the locale
dependent encoding, determined by LC_ALL, LC_CTYPE, LANG.
 Unrecognised surface name `%s' Unsurfacer set more than once for `%s' Untranslatable input Virtual memory exhausted Virtual memory exhausted! With -k, possible before charsets are listed for the given after CHARSET,
both being tabular charsets, with PAIRS of the form `BEF1:AFT1,BEF2:AFT2,...'
and BEFs and AFTs being codes are given as decimal numbers.
 Written by Franc,ois Pinard <pinard@iro.umontreal.ca>.
 byte reversible ucs2 variable Project-Id-Version: Free recode 3.6
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2001-01-02 22:35+0100
PO-Revision-Date: 2015-12-04 22:31+0000
Last-Translator: Santiago Vila Doncel <Unknown>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:04+0000
X-Generator: Launchpad (build 18115)
 
Copyright (C) 1990, 92, 93, 94, 96, 97, 99 Free Software Foundation, Inc.
 
Ajuste fino:
  -s, --strict           utiliza correspondencias estrictas, aunque se pierdan
                         caracteres
  -d, --diacritics       convierte solamente acentos y demás para HTML/LaTeX
  -S, --source[=LN]      limita la conversión a cadenas y comentarios según LN
  -c, --colons           utiliza dos puntos en vez de comillas para diéresis
  -g, --graphics         aproxima gráficos IBMPC mediante gráficos ASCII
  -x, --ignore=JUEGO     descarta JUEGO al escoger un camino de conversión
 
Si una opción larga muestra un argumento como obligatorio, entonces es
obligatorio también para la opción corta equivalente. Lo mismo para los
argumentos opcionales.
 
Si no se especifica ninguna de las opciones -i o -p, se supone -p si no
hay ningún ARCHIVO, o si no, -i. Cada ARCHIVO se convierte sobre sí mismo,
destruyendo el original. Si no es especifica ningún ARCHIVO, entonces funciona
como filtro y convierte la entrada estándar en la salida estándar.
 
Listados:
  -l, --list[=FORMATO]       muestra uno o todos los juegos y alias conocidos
  -k, --known=PARES          restringe los juegos de acuerdo con la lista de
                             PARES conocidos
  -h, --header[=[LN/]NOMBRE  escribe la tabla NOMBRE en la salida estándar
                             usando LN, y finaliza
  -F, --freeze-tables        escribe un módulo en C con todas las tablas
  -T, --find-subsets         informa acerca de todos los juegos de caracteres
                             que son subconjuntos de otros
  -C, --copyright            muestra el Copyright y las condiciones de copia
      --help                 muestra esta ayuda y finaliza
      --version              muestra la versión y finaliza
 
Modos de operación:
  -v, --verbose           explica la sucesión de pasos e informa del desarrollo
  -q, --quiet, --silent   no muestra mensajes sobre conversiones irreversibles
  -f, --force             realiza la conversión incluso si no es reversible
  -t, --touch             toca los archivos convertidos después del reemplazo
  -i, --sequence=files    utiliza archivos intermedios para las pasadas
      --sequence=memory   utiliza búfers en memoria para las pasadas
 
La opción -l sin FORMATO ni JUEGO muestra los juegos de caracteres y facetas.
disponibles. FORMATO es «decimal», «octal», «hexadecimal» o «full» (o uno de
entre «dohf»).
 
PETICIÓN es SUBPETICIÓN[,SUBPETICIÓN]...;
SUBPETICIÓN es CODIFICACIÓN[..CODIFICACIÓN]...
CODIFICACIÓN es [JUEGO][/[FACETA]]...; PETICIÓN suele ser ANTES..DESPUÉS,
donde ANTES y DESPUÉS son juegos de caracteres.  Un JUEGO omitido implica el
juego de caracteres usual; una [/FACETA]... omitida significa la faceta
implícita para el JUEGO; una / con una faceta vacía significa que no hay
ninguna faceta. Véase el manual.
 
Comunicar errores a <recode-bugs@iro.umontreal.ca>.
 
Modo de empleo: %s [OPCIÓN]... [ [JUEGO] | PETICIÓN [ARCHIVO]... ]
   -p, --sequence=pipe     lo mismo que -i (en este sistema)
   -p, --sequence=pipe     utiliza tuberías para las pasadas
  hecho
  falló: %s en el paso %s..%s
 %s falló: %s en el paso «%s..%s» %s en el paso «%s..%s» %s a %s %sTabla de conversión generada automáticamente por Free «%s» %s %spara la sucesión %s.%s *Imposible* *copia pura y simple* Resultado ambiguo No se puede completar la tabla a partir del conjunto de pares conocidos No se puede invertir la tabla uno-a-uno dada No se puede mostrar «%s», no hay nombres disponibles para este
juego de caracteres El juego de caracteres %s ya existe y no es %s El juego de caracteres «%s» es desconocido o ambiguo El estado de espera del proceso hijo es 0x%0.2x Los códigos %3d y %3d se convierten ambos en %3d Dec  Oct Hex   UCS2  Nem  %s
 Se esperaba «..» en la petición Procedimiento para convertir de «%s» a «%s»: El formato «%s» es ambiguo El formato «%s» es desconocido Free «recode» convierte archivos entre varios juegos de caracteres y facetas.
 Conversión de identidad, no merece una tabla Error interno de conversión Entrada inválida LN es algún lenguaje, puede ser «c», «perl» o «po», el valor predeterminado
es «c»
 El idioma «%s» es ambiguo El idioma «%s» es desconocido Uso inadecuado de la biblioteca de conversión Ningún carácter se convierte en %3d Sin errores No hay ninguna tabla que mostrar No se puede convertir de «%s» a «%s» La entrada no es canónica El par nº %d: <%3d, %3d> es conflictivo con <%3d, %3d> Convirtiendo %s... La conversión es demasiado compleja para una simple tabla La petición «%s» es errónea Petición: %s
 Falta el argumento requerido Se ha establecido «resurfacer» más de una vez para «%s» La secuencia «%s» es ambigua La secuencia «%s» es desconocida Encogido a: %s
 Lo siento, no hay nombres disponibles para «%s» Falló la etapa de inicialización Falló la etapa de inicialización (opciones sin procesar) El símbolo «%s» es desconocido La sintaxis es antigua, utilice «%s» Problema detectado por el sistema Esto es software libre; vea el código fuente para las condiciones de copia.
No hay NINGUNA garantía; ni siquiera de COMERCIABILIDAD o IDONEIDAD PARA UN
FIN DETERMINADO.
 Este programa es software libre; puede ser redistribuido o
modificado bajo los términos de la Licencia Pública General de
GNU tal y como se publica por la Free Software Foundation; bien
en su versión 2, o (a su elección) cualquier versión posterior.

Este programa se distribuye con la esperanza de que sea útil,
pero SIN NINGUNA GARANTÍA; ni siquiera la garantía implícita de
COMERCIABILIDAD o IDONEIDAD PARA UN FIN DETERMINADO. Véase la
Licencia Pública General de GNU para más detalles.

Usted debería haber recibido una copia de la Licencia Pública
General de GNU junto con este programa; en caso contrario, escriba
a la Free Software Foundation, Inc., 59 Temple Place - Suite 330,
Boston, MA 02111-1307, EE.UU.
 Pruebe «%s %s» para más información.
 UCS2   Nem   Descripción

 A menos que se establezca DEFAULT_CHARSET en el entorno, el valor
predeterminado de CHARSET es la codificación de la que depende el local,
determinada por LC_ALL, LC_CTYPE, LANG.
 Nombre de faceta no reconocido «%s» Se ha establecido «unsurfacer» más de una vez para «%s» Entrada no convertible Memoria virtual agotada ¡Memoria virtual agotada! Con -k, se muestran los posibles juegos «antes» para el JUEGO «después» dado,
siendo ambos juegos de caracteres tabulares, con PAREJAS de la forma
«ANT1:DES1,ANT2:DES2,...» y siendo los ANT y los DES códigos dados
como números decimales.
 Escrito por François Pinard <pinard@iro.umontreal.ca>.
 byte reversible ucs2 variable 