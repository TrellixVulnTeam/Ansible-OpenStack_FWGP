��    ;      �  O   �        �   	  c   �  �     a   �  K   �  �   D  '  A     i	     �	  *   �	  �  �	  -   �  &   �     �  .     )   E  )   o  -   �  I   �               >  "   L      o  &   �  -   �  -   �          3  #   C  6   g     �     �     �     �     �  &     O   +  -   {     �     �  #   �  "   �  %     "   4  %   W     }     �     �     �     �     �  5   �     3     G     [     r     �  �  �  �   A  t   )  �   �  i   :  L   �     �  7  �     *     C  @   X  \  �  6   �  +   -  !   Y  >   {  8   �  .   �  0   "  X   S     �      �     �  :   �  "   *  3   M  8   �  7   �  )   �       +   ,  B   X     �  &   �     �     �     �  5     M   H  0   �     �     �  "   �  #      %   3   #   Y   &   }   '   �      �      �       !     !     *!  9   1!     k!     !     �!      �!     �!     7   6   )      -   &                     (   *   8                      1   ;         "   
          $           9   4                              3          +   2          5              /                     :   !                    0   #   %   	      ,   '                .              --allow-unassigned   Toggle IDNA AllowUnassigned flag (default off)
      --usestd3asciirules  Toggle IDNA UseSTD3ASCIIRules flag (default off)
       --debug              Print debugging information
      --quiet              Silent operation
       --no-tld             Don't check string for TLD specific rules
                             Only for --idna-to-ascii and --idna-to-unicode
   -h, --help               Print help and exit
  -V, --version            Print version and exit
   -n, --nfkc               Normalize string according to Unicode v3.2 NFKC
   -p, --profile=STRING     Use specified stringprep profile instead
                             Valid stringprep profiles: `Nameprep',
                             `iSCSI', `Nodeprep', `Resourceprep', 
                             `trace', `SASLprep'
   -s, --stringprep         Prepare string according to nameprep profile
  -d, --punycode-decode    Decode Punycode
  -e, --punycode-encode    Encode Punycode
  -a, --idna-to-ascii      Convert to ACE according to IDNA (default mode)
  -u, --idna-to-unicode    Convert from ACE according to IDNA
 Cannot allocate memory Charset `%s'.
 Code points prohibited by top-level domain Command line interface to the internationalized domain name library.

All strings are expected to be encoded in the preferred charset used
by your locale.  Use `--debug' to find out what this charset is.  You
can override the charset used by setting environment variable CHARSET.

To process a string that starts with `-', for example `-foo', use `--'
to signal the end of parameters, as in `idn --quiet -a -- -foo'.

Mandatory arguments to long options are mandatory for short options too.
 Conflicting bidirectional properties in input Error in stringprep profile definition Flag conflict with profile Forbidden leading or trailing minus sign (`-') Forbidden unassigned code points in input Input already contain ACE prefix (`xn--') Input does not start with ACE prefix (`xn--') Internationalized Domain Name (IDN) convert STRINGS, or standard input.

 Invalid input Malformed bidirectional string Missing input No top-level domain found in input Non-digit/letter/hyphen in input Output would be too large or too small Output would exceed the buffer space provided Prohibited bidirectional code points in input Prohibited code points in input Punycode failed String not idempotent under ToASCII String not idempotent under Unicode NFKC normalization String preparation failed String size limit exceeded Success System dlopen failed System iconv failed Try `%s --help' for more information.
 Type each input string on a line by itself, terminated by a newline character.
 Unicode normalization failed (internal error) Unknown error Unknown profile Usage: %s [OPTION]... [STRINGS]...
 could not convert from %s to UTF-8 could not convert from UCS-4 to UTF-8 could not convert from UTF-8 to %s could not convert from UTF-8 to UCS-4 could not do NFKC normalization idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s input error malloc only one of -s, -e, -d, -a, -u or -n can be specified punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (position %lu): %s tld_check_4z: %s Project-Id-Version: libidn
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2015-08-01 15:20+0200
PO-Revision-Date: 2009-10-18 09:20+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 17:00+0000
X-Generator: Launchpad (build 18115)
       --allow-unassigned   Cambia el valor del indicador IDNA AllowUnassigned (desactivado por defecto)
      --usestd3asciirules  Cambia el valor del indicador IDNA AllowUnassigned IDNA UseSTD3ASCIIRules (desactivado por defecto)
       --debug              Imprime la información de depuración
      --quiet              Silencia la operación
       --no-tld             No comrpueba la cadena para reglas específicas TLD
                             Sólo para --idna-to-ascii e --idna-to-unicode
   -h, --help               Imprime la ayuda y sale
  -V, --version            Imprime la versión y sale
   -n, --nfkc               Normaliza cadenas de acuerdo a Unicode v3.2 NFKC
   -p, --profile=CADENA     Usa el perfil especificado por la cadena
                             Perfiles válidos: «Nameprep»,
                             «iSCSI», «Nodeprep», «Resourceprep», 
                             «trace», «SASLprep»
   -s, --stringprep         Prepara la cadea de acuerdo al perfil nameprep
  -d, --punycode-decode    Decodifica Punycode
  -e, --punycode-encode    Codifica Punycode
  -a, --idna-to-ascii      Convierte a ACE de acuerdo a IDNA (modo predeterminado)
  -u, --idna-to-unicode    Convierte de ACE de acuerdo a IDNA
 No puede asignar memoria Codificación `%s'.
 Trozos de código no permitido por el dominio del nivel superior Interfaz de línea de órdenes para la biblioteca internacionalizada de nombres de dominio.

Todas las cadenas son esperadas  para ser codificadas en el conjunto usado de caracteres preferidos
por su local. Usar `--debug' para encontrar que caracter es.
Puede anular el conjunto de caracteres usados por la configuración de la variable de entorno CHARSET.

Para procesar una cadena que empieza con `-', por ejemplo `-foo' use `--'
para señalar el final de los parámetros, como en `idn --quiet-a -- -foo'.

Los argumentos obligados para las opciones largas son obligados para opciones cortas también.
 Propiedades bidireccionales conflictivas en la entrada Error en definición del perfirl stringprep Indicador en conflicto con perfil Se prohibe el uso del signo menos (`-') al comienzo o al final Trozos de código no asignado no permitido en la entrada La entrada ya contiene el prefijo ACE (`xn--') La entrada no inicia con el prefijo ACE (`xn--') Nombres de dominio internacionalizados (IDN) convierten STRINGS, o entradas estándar.

 Entrada inválida Cadena bidireccional mal formada Entrada perdida No se encontró un dominio de nivel superior en la entrada No dígito/letra/guión en entrada Salida sería demasiado grande o demasiado pequeña La salida excedería el espacio del búfer proporcionado Trozos de código bidireccional prohibido en la entrada Trozos de código prohibido en la entrada Falló punycode La cadena no es idempotente al usar ToASCII La cadena no es idempontente según la normalización Unicode NFKC Falló preparación de cadena Límite del tamaño de cadena excedido Éxito Falló sistema dlopen Falló sistema iconv Pruebe «%s --help» para obtener más información.
 Escriba cada cadena en una linea y termínela con un caracter de nueva linea
 Falló la normalización unicode (error interno) Error desconocido Perfil desconocido Uso: %s [OPCIÓN]... [CADENAS]...
 no se puede convertir de %s a UTF-8 no se pudo convertir de UCS-4 a UTF-8 no se puede convertir de UTF-8 a %s no se puede convertir de UTF-8 a UCS-4 no se pudo hacer la normalización NFKC idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s error de entrada malloc sólo se puede especificar una de -s, -e, -d, -a, -u o -n punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (posición %lu): %s tld_check_4z: %s 