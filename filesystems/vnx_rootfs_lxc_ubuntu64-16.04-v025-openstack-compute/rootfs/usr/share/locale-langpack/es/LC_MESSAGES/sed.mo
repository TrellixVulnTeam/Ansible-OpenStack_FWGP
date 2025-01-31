��    \      �     �      �  �   �  ,   �  5   	  N   7	  7   �	  \   �	  _   
  `   {
  u   �
  i   R  b   �  V     Y   v  ~   �  �   O  D   �  %   $     J     a  5   {  B   �     �  e     w   w     �          #     ?  $   W     |     �     �     �     �     �     �     �  #   	     -     H     P     Y     l     ~     �     �  H   �     �       !   1     S     h  (   }     �     �  #   �     �       $   5     Z     y  #   �  B   �  2   �     -      A     b     �     �  *   �  *   �          (     8  #   F  #   j  &   �     �     �  ,   �          )  -   >     l     {     �     �     �     �     �     �  �    8  �  .   '  B   V  [   �  C   �  {   9  y   �  h   /  �   �  z   2  ~   �  `   ,  `   �  �   �  �   u  I   @   *   �      �      �   ?   �   Y   1!     �!  �   �!  �   +"  !   �"  &   �"  #   �"     #  '   9#     a#     z#     �#     �#     �#     �#  $   �#     �#  (   $  #   /$     S$     Z$     c$     $     �$     �$     �$  P   �$     %      1%  4   R%     �%     �%  G   �%  5   &  %   >&  -   d&     �&  &   �&  /   �&  .   '  #   6'  ,   Z'  U   �'  ;   �'     (  .   0(  -   _(  %   �(     �(  =   �(  0   )  *   5)     `)     p)  )   �)  )   �)  0   �)     *  $    *  9   E*     *     �*  :   �*     �*     �*     +     '+     D+     S+     j+  -   �+           C          	   5             !   <      J   +                 R   #   
   3   L   S           E   M       *   B                     F      :   X      2   I                 H   .                 >                  ?       %          $   Q   9               T   4               1       [                -             V       @              G   =       ,   U   \   O   7   N      )   &           P   (   ;   A   Z       W   '   /   0       K   D      8   Y   "   6          
If no -e, --expression, -f, or --file option is given, then the first
non-option argument is taken as the sed script to interpret.  All
remaining arguments are names of input files; if no input files are
specified, then the standard input is read.

       --help     display this help and exit
       --version  output version information and exit
   --follow-symlinks
                 follow symlinks when processing in place
   --posix
                 disable all GNU extensions.
   -R, --regexp-perl
                 use Perl 5's regular expressions syntax in the script.
   -b, --binary
                 open files in binary mode (CR+LFs are not processed specially)
   -e script, --expression=script
                 add the script to the commands to be executed
   -f script-file, --file=script-file
                 add the contents of script-file to the commands to be executed
   -i[SUFFIX], --in-place[=SUFFIX]
                 edit files in place (makes backup if SUFFIX supplied)
   -l N, --line-length=N
                 specify the desired line-wrap length for the `l' command
   -n, --quiet, --silent
                 suppress automatic printing of pattern space
   -r, --regexp-extended
                 use extended regular expressions in the script.
   -s, --separate
                 consider files as separate rather than as a single continuous
                 long stream.
   -u, --unbuffered
                 load minimal amounts of data from the input files and flush
                 the output buffers more often
   -z, --null-data
                 separate lines by NUL characters
 %s: -e expression #%lu, char %lu: %s
 %s: can't read %s: %s
 %s: file %s line %lu: %s
 %s: warning: failed to get security context of %s: %s %s: warning: failed to set default file creation context to %s: %s : doesn't want any addresses E-mail bug reports to: <%s>.
Be sure to include the word ``%s'' somewhere in the ``Subject:'' field.
 GNU sed home page: <http://www.gnu.org/software/sed/>.
General help using GNU software: <http://www.gnu.org/gethelp/>.
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Jay Fenlason Ken Pizzini Memory exhausted No match No previous regular expression Paolo Bonzini Premature end of regular expression Regular expression too big Success Tom Lord Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses can't find label for jump to `%s' cannot remove %s: %s cannot rename %s: %s cannot specify modifiers on empty regexp cannot stat %s: %s command only uses one address comments don't accept any addresses couldn't attach to %s: %s couldn't edit %s: is a terminal couldn't edit %s: not a regular file couldn't follow symlink %s: %s couldn't open file %s: %s couldn't open temporary file %s: %s couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected \ after `a', `c' or `i' expected newer version of sed extra characters after command incomplete command invalid reference \%d on `s' command's RHS invalid usage of +N or ~N as first address invalid usage of line address 0 missing command multiple `!'s multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command no input files no previous regular expression number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths unexpected `,' unexpected `}' unknown command: `%c' unknown option to `s' unmatched `{' unterminated `s' command unterminated `y' command unterminated address regex Project-Id-Version: sed 4.2.1
Report-Msgid-Bugs-To: bug-gnu-utils@gnu.org
POT-Creation-Date: 2012-12-22 14:36+0100
PO-Revision-Date: 2016-02-12 13:40+0000
Last-Translator: Cristian Othón Martínez Vera <Unknown>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2016-06-27 17:17+0000
X-Generator: Launchpad (build 18115)
Language: es
 
Si no se proporciona una opción -e, --expression, -f, o --file option,
entonces se toma el primer argumento que no sea opción como el guión sed
a interpretar.  Todos los argumentos restantes son nombres de archivos
de entrada; si no se especifican ficheros de entrada, entonces se lee
la entrada estándar.

       --help     muestra esta ayuda y termina
       --version  muestra la información de la versión y termina
   --follow-symlinks
                 sigue los enlaces simbólicos al procesar en el lugar
   --posix
                 desactiva todas las extensiones de GNU.
   -R, --regexp-perl
                 utiliza la sintaxis de expresiones regulares de Perl 5
                 en el guión.
   -b, --binary
                 abre ficheros en modo binario (los RC+FLs no se procesan
                 especialmente)
   -e guión, --expression=guión
                 agrega el guión a la lista de órdenes para ejecutar
   -f fichero-guión, --file=fichero-guión
                 agrega el contenido del fichero guión a la lista de órdenes
                 para ejecutar
   -i[SUFIJO], --in-place[=SUFIJO]
                 editar archivos su sitio (crea copia de seguridad si se indica SUFIJO)
   -l N, --line-length=N
                 especifica la longitud de corte de línea deseado para
                 la orden `l'
   -n, --quiet, --silent
                 suprime la muestra automática del espacio de patrones
   -r, --regexp-extended
                 utiliza expresiones regulares extendidas en el guión.
   -s, --separate
                 considera los ficheros como separados en lugar de un solo
                 flujo, largo y continuo.
   -u, --unbuffered
                 carga cantidades mínimas de datos de los ficheros de entrada
                 y vacía los almacenamientos temporales de salida con más
                 frecuencia
   -z, --null-data
                 separa las líneas con caracteres NUL
 %s: -e expresión #%lu, carácter %lu: %s
 %s: no se puede leer %s: %s
 %s: fichero %s línea %lu: %s
 %s: aviso: falló al obtener el contexto de seguridad de %s: %s %s: aviso: falló al establecer el contexto de creación de fichero por omisión a %s: %s : no acepta ninguna dirección Envíe reportes de bichos por e-mail a: <%s>.
Asegúrese de incluir la palabra ``%s'' en algún lugar en el campo ``Subject:''.
 Página web de sed de GNU: <http://www.gnu.org/software/sed/>.
Ayuda general para usar software GNU: <http://www.gnu.org/gethelp/>.
 Referencia hacia atrás inválida Carácter de nombre de clase inválido Carácter de ordenamiento inválido Contenido inválido de \{\} Expresión regular precedente inválida Final de rango inválido Expresion regular inválida Jay Fenlason Ken Pizzini Memoria agotada No hay coincidencia No hay una expresión regular previa Paolo Bonzini Final prematuro de la expresión regular Expresión regular demasiado grande Éxito Tom Lord Diagonal invertida al final ( o \( sin pareja ) o \) sin pareja [ o [^ sin pareja \{ sin pareja Uso: %s [OPCIÓN]... {guión-sólo-si-no-hay-otro-guión} [fichero-entrada]...

 no se permite la orden «e» `}' no acepta ninguna dirección no se puede encontrar la etiqueta para saltar a `%s' no se puede eliminar %s: %s no se puede renombrar %s: %s no se pueden especificar modificadores en expresiones regulares vacías no se puede obtener la información de stat de %s: %s la orden solamente usa una dirección los comentarios no aceptan ninguna dirección no se puede conectar a %s: %s no se puede editar %s: es una terminal no se puede editar %s: no es un archivo regular no se puede seguir el enlace simbólico %s: %s no se puede abrir el archivo %s: %s no se puede abrir el archivo temporal %s: %s no se puede escribir %d elemento a %s: %s no se pueden escribir %d elementos a %s: %s el carácter delimitador no es un carácter de un solo byte error en el subproceso se esperaba \ después de «a», «c» o «i» se esperaba una versión más reciente de sed caracteres extra después de la orden comando incompleto referencia \%d inválida en el lado derecho de la orden «s» uso inválido de +N o ~N como primera dirección uso inválido de la dirección de línea 0 falta una orden `!'s múltiples múltiples opciones `g' para la orden `s' múltiples opciones `p' para la orden `s' múltiples opciones numéricas para la orden `s' no hay ficheros de entrada no hay una expresión regular previa una opción numérica para la orden `s' no puede ser cero no se soporta la opción `e' error al leer de %s: %s las cadenas para la orden `y' son de longitudes diferentes `,' inesperada `}' inesperado orden desconocida: «%c» opción desconocida para `s' `{' sin pareja orden `s' sin terminar orden `y' sin terminar dirección de expresión regular sin terminar 