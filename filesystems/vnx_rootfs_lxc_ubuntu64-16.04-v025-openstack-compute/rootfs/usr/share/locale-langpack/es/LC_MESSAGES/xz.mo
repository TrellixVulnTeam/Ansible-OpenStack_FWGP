��   �   0   �  �   �     �     �  �      L  �   M  7    �  W  -      F   N     �     �  7   �  �   �  �   �  �   *  �     �  �  H   j     �  E   3  �   y      >   &  9   e  �   �  �   5  �   �  �   <  �   
  �   �  l   \     �     �     �          5     U     o     �     �  z   �     8      R      l   .   ~   6   �      �      �      !     !  !   &!  !   H!  '   j!     �!     �!     �!  *   �!  /   "  %   L"     r"  /   �"  ,   �"     �"  4   �"     ,#     H#     f#     ~#     �#      �#      �#  h   �#  <   _$     �$  :   �$  $   �$     %  2   *%     ]%  $   z%  /   �%  I   �%     &  3   -&  =   a&  d   �&      '  O   %'  .   u'  /   �'     �'  A   �'  )   1(     [(     d(  8   }(     �(     �(  (   �(  I   )  !   Y)  '   {)  '   �)  9   �)     *      *  0   #*     T*  <   Y*  -   �*  @   �*  /   +  7   5+  D   m+  &   �+  '   �+     ,  %   	,     /,     G,  
   U,  
   `,  
   k,  
   v,  
   �,  	   �,  	   �,  	   �,  	   �,  	   �,  	   �,  	   �,  "   �,  *   �,      -  A   4-  Q   v-  *   �-  @   �-  !   4.     V.  �  Z.  �   #0  �  �0  �  z4  8   ?6  X   x6     �6     �6  ?   7  �   D7  s   8    �8  �   �9  �  A:  V   %<  �   |<  K   =  �   a=  M  >  H   Y?  <   �?  �   �?  �   �@  �   A  �   �A  �   �B  �   C  a   �C     OD     ^D     |D  !   �D  #   �D     �D     �D     E     0E  r   HE     �E     �E     �E  1   �E  =   .F     lF     �F     �F     �F  2   �F  8   �F  5   1G  $   gG  -   �G  !   �G  3   �G  =   H  4   NH     �H  4   �H  @   �H     I  A   -I  +   oI  "   �I     �I     �I     �I  &   J  *   DJ  }   oJ  c   �J     QK  E   jK  5   �K     �K  E   L  *   JL  3   uL  0   �L  `   �L     ;M  1   VM  B   �M  p   �M  1   <N  t   nN  ;   �N  <   O  &   \O  <   �O  /   �O     �O  #   �O  :    P      [P     |P  (   �P  i   �P  '   #Q  0   KQ  1   |Q  O   �Q  #   �Q     "R  F   %R     lR  D   tR  :   �R  @   �R  2   5S  8   hS  S   �S  '   �S  (   T     FT  ,   OT     |T     �T  
   �T  
   �T  
   �T  
   �T  
   �T  	   �T  	   �T  	   �T  	   �T  	   U  	   U  	   U  .   %U  3   TU     �U  I   �U  X   �U  @   BV  J   �V  *   �V     �V     ^   =       K   I       |   .           �          �   1              U   u      +          _              5   8       q       #   d       9   `   (       3   c          ]       -   [   �   y   a          J   "   ~   �   j            Z       %           s      0                          x          $   e       A          E      k           ,   }       R       O   B   �       )   ?       @   
       �       L   t   f   G             �       <              !   {   n   l   >   V   Q   2      Y   \       m   M   '           F          D   o      r   ;      p      X   w   v   7   z       	      N         �   i   4           b   *   H   W       6   g      �   �       T   &       h               P   /   :       �      C   S         �V     W  �       0  W  2          ����>W  0               ����sW  >          �����W  :               ���� 
  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):
                        dist=NUM   distance between bytes being subtracted
                                   from each other (1-256; 1) 
  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or
  --lzma2[=OPTS]      more of the following options (valid values; default):
                        preset=PRE reset options to a preset (0-9[e])
                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)
                        lc=NUM     number of literal context bits (0-4; 3)
                        lp=NUM     number of literal position bits (0-4; 0)
                        pb=NUM     number of position bits (0-4; 2)
                        mode=MODE  compression mode (fast, normal; normal)
                        nice=NUM   nice length of a match (2-273; 64)
                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)
                        depth=NUM  maximum search depth; 0=automatic (default) 
  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)
  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)
  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter
  --arm[=OPTS]        ARM BCJ filter (little endian only)
  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)
  --sparc[=OPTS]      SPARC BCJ filter
                      Valid OPTS for all BCJ filters:
                        start=NUM  start offset for conversions (default=0) 
 Basic file format and compression options:
 
 Custom filter chain for compression (alternative for using presets): 
 Operation modifiers:
 
 Other options:
 
With no FILE, or when FILE is -, read standard input.
       --block-size=SIZE
                      when compressing to the .xz format, start a new block
                      after every SIZE bytes of input; 0=disabled (default)       --info-memory   display the total amount of RAM and the currently active
                      memory usage limits, and exit       --memlimit-compress=LIMIT
      --memlimit-decompress=LIMIT
  -M, --memlimit=LIMIT
                      set memory usage limit for compression, decompression,
                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults       --no-adjust     if compression settings exceed the memory usage limit,
                      give an error instead of adjusting the settings downwards       --no-sparse     do not create sparse files when decompressing
  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files
      --files[=FILE]  read filenames to process from FILE; if FILE is
                      omitted, filenames are read from the standard input;
                      filenames must be terminated with the newline character
      --files0[=FILE] like --files but use the null character as terminator       --robot         use machine-parsable messages (useful for scripts)       --single-stream decompress only the first stream, and silently
                      ignore possible remaining input data       CheckVal %*s Header  Flags        CompSize    MemUsage  Filters   -0 ... -9           compression preset; default is 6; take compressor *and*
                      decompressor memory usage into account before using 7-9!   -F, --format=FMT    file format to encode or decode; possible values are
                      `auto' (default), `xz', `lzma', and `raw'
  -C, --check=CHECK   integrity check type: `none' (use with caution),
                      `crc32', `crc64' (default), or `sha256'   -Q, --no-warn       make warnings not affect the exit status   -V, --version       display the version number and exit   -e, --extreme       try to improve compression ratio by using more CPU time;
                      does not affect decompressor memory requirements   -h, --help          display the short help (lists only the basic options)
  -H, --long-help     display this long help and exit   -h, --help          display this short help and exit
  -H, --long-help     display the long help (lists also the advanced options)   -k, --keep          keep (don't delete) input files
  -f, --force         force overwrite of output file and (de)compress links
  -c, --stdout        write to standard output and don't delete input files   -q, --quiet         suppress warnings; specify twice to suppress errors too
  -v, --verbose       be verbose; specify twice for even more verbose   -z, --compress      force compression
  -d, --decompress    force decompression
  -t, --test          test compressed file integrity
  -l, --list          list information about .xz files   Blocks:
    Stream     Block      CompOffset    UncompOffset       TotalSize      UncompSize  Ratio  Check   Blocks:             %s
   Check:              %s
   Compressed size:    %s
   Memory needed:      %s MiB
   Minimum XZ Utils version: %s
   Number of files:    %s
   Ratio:              %s
   Sizes in headers:   %s
   Stream padding:     %s
   Streams:
    Stream    Blocks      CompOffset    UncompOffset        CompSize      UncompSize  Ratio  Check      Padding   Streams:            %s
   Uncompressed size:  %s
  Operation mode:
 %s MiB of memory is required. The limit is %s. %s MiB of memory is required. The limiter is disabled. %s file
 %s files
 %s home page: <%s>
 %s:  %s: Cannot remove: %s %s: Cannot set the file group: %s %s: Cannot set the file owner: %s %s: Cannot set the file permissions: %s %s: Closing the file failed: %s %s: Error reading filenames: %s %s: Error seeking the file: %s %s: File already has `%s' suffix, skipping %s: File has setuid or setgid bit set, skipping %s: File has sticky bit set, skipping %s: File is empty %s: File seems to have been moved, not removing %s: Filename has an unknown suffix, skipping %s: Filter chain: %s
 %s: Input file has more than one hard link, skipping %s: Invalid filename suffix %s: Invalid multiplier suffix %s: Invalid option name %s: Invalid option value %s: Is a directory, skipping %s: Is a symbolic link, skipping %s: Not a regular file, skipping %s: Null character found when reading filenames; maybe you meant to use `--files0' instead of `--files'? %s: Options must be `name=value' pairs separated with commas %s: Read error: %s %s: Seeking failed when trying to create a sparse file: %s %s: Too small to be a valid .xz file %s: Unexpected end of file %s: Unexpected end of input when reading filenames %s: Unknown file format type %s: Unsupported integrity check type %s: Value is not a non-negative decimal integer %s: With --format=raw, --suffix=.SUF is required unless writing to stdout %s: Write error: %s --list does not support reading from standard input --list works only on .xz files (--format=xz or --format=auto) Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB Cannot establish signal handlers Cannot read data from standard input when reading filenames from standard input Compressed data cannot be read from a terminal Compressed data cannot be written to a terminal Compressed data is corrupt Compression and decompression with --robot are not supported yet. Decompression will need %s MiB of memory. Disabled Empty filename, skipping Error restoring the O_APPEND flag to standard output: %s File format not recognized Internal error (bug) LZMA1 cannot be used with the .xz format Mandatory arguments to long options are mandatory for short options too.
 Maximum number of filters is four Memory usage limit for compression:     Memory usage limit for decompression:   Memory usage limit is too low for the given filter setup. Memory usage limit reached No No integrity check; not verifying file integrity None Only one file can be specified with `--files' or `--files0'. Report bugs to <%s> (in English or Finnish).
 Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename The .lzma format supports only the LZMA1 filter The environment variable %s contains too many arguments The exact options of the presets may vary between software versions. The sum of lc and lp must not exceed 4 Total amount of physical memory (RAM):  Totals: Try `%s --help' for more information. Unexpected end of input Unknown error Unknown-11 Unknown-12 Unknown-13 Unknown-14 Unknown-15 Unknown-2 Unknown-3 Unknown-5 Unknown-6 Unknown-7 Unknown-8 Unknown-9 Unsupported LZMA1/LZMA2 preset: %s Unsupported filter chain or filter options Unsupported options Unsupported type of integrity check; not verifying file integrity Usage: %s [OPTION]... [FILE]...
Compress or decompress FILEs in the .xz format.

 Using a preset in raw mode is discouraged. Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30). Writing to standard output failed Yes Project-Id-Version: xz-utils
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2015-12-04 03:00+0000
PO-Revision-Date: 2013-01-04 07:55+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2016-06-27 18:40+0000
X-Generator: Launchpad (build 18115)
 
  --delta[=OPCS] Filtro delta; OPCS válidas (valores válidos; predeterminado):
                        dist=NÚM distancia entre los bytes que se restan
                                   entre sí (1-256; 1) 
  --lzma1[=OPTS] LZMA1 or LZMA2; OPTS es una lista separada por comas de ninguna o
  --lzma2[=OPTS] más de las siguientes opciones (valores válidos; predeterminado):
                        preset=PRE restablece las opciones a un preset (0-9[e])
                        dict=NUM tamaño de diccionario (4KiB - 1536MiB; 8MiB)
                        lc=NUM número de bits en contexto literal (0-4; 3)
                        lp=NUM número de bits de posiciones literales (0-4; 0)
                        pb=NUM número de bits de posición (0-4; 2)
                        mode=MODE modo de compresión (rápido, normal; normal)
                        nice=NUM longitud óptima de coincidencia (2-273; 64)
                        mf=NAME buscador de coincidencias (hc3, hc4, bt2, bt3, bt4; bt4)
                        depth=NUM máxima profundidad de búsqueda; 0=automático (predeterminado) 
  --x86[=OPTS] filtro BJC x86 (32-bit y 64-bit)
  --powerpc[=OPTS] PowerPC BCJ filter (solo big endian)
  --ia64[=OPTS] IA-64 (Itanium) filtro BCJ 
  --arm[=OPTS] ARM BCJ filter (solo little endian)
  --armthumb[=OPTS] filtro BCJ ARM-Thumb  (solo little endian)
  --sparc[=OPTS] filtro SPARC BCJ 
                      OPTS válidos para todos los filtros BCJ:
                        start=NUM inicia la posición para conversiones (perdeterminado=0) 
 Formato de archivo básico y opciones de compresión:
 
 Cadena de filtrado personalizada para compresión (alternativa al uso de parámetros): 
 Modificadores de operación:
 
 Otras opciones:
 
Sin ARCHIVO, o cuando ARCHIVO es -, lee la entrada estándar.
       --block-size=SIZE
                      cuando se comprima al formato .xz, iniciar un nuevo bloque
                      después de cada SIZE en bytes de entrada; 0=desactivado (predeterminado)       --info-memory   muestra la cantidad de RAM y el límite de uso de
                      memoria activa y sale       --memlimit-compress=LIMIT
      --memlimit-decompress=LIMIT
  -M, --memlimit=LIMIT
                      establece el límite de uso de memoria para la compresión, descompresión,
                      o ambas; LIMIT está en bytes, % de RAM, o 0 para predeterminado       --no-adjust Si la configuración de compresión excede el límite de uso de memoria,
                      da un error en lugar de ajustar la configuración posterior.       --no-sparse no crear archivos dispersos al descomprimir
  -S, --suffix=.SUF utilice el sufijo «.SUF» en archivos comprimidos
      --files[=ARCHIVO] leer nombres de archivos a procesar de ARCHIVO; si se
                      omite ARCHIVO, los nombres se leerán de la entrada estándar;
                      los nombres de archivos deben finalizar con el carácter de salto de línea.
      --files0[=ARCHIVO] como --files pero utilizando el carácter nulo como terminador.       --robot         usa mensajes interpretables por la máquina (útil para scripts)       --single-stream descomprime solamente la primera secuencia, y silenciosamente
                      ignora los posibles datos de entrada restantes       Comprobarvalor %*s Cabecera Marcas TamañodeComp UsodeMemoria Filtros   -0 ... -9 compresión predefinida; predeterminado 6; ¡tenga en cuenta el
                      uso de la memoria del compresor *y* del descompresor antes de usar 7-9!   -F, --format=formato de archivo FMT para codificar o decodificar; los valores posibles son
                      «auto» (predeterminado), «xz», «lzma», y «raw»
  -C, --check=tipo de comprobación de integridad CHECK: «none» (usar con precaución),
                      «crc32», «crc64» (predeterminado), o «sha256»   -Q, --no-warn       hace que los avisos no afecten el estado de salida   -V, --version       mostrar el número de versión y salir   -e, --extreme intenta mejorar la relación de compresión mediante el uso de tiempo CPU;
                      no afecta a los requisitos de memoria de descompresión   -h, --help          mostrar la ayuda corta (lista solamente las opciones básicas)
  -H, --long-help     mostrar la ayuda larga y salir   -h, --help          mostrar esta ayuda corta y salir
  -H, --long-help     mostrar la ayuda larga (lista también las opciones avanzadas)   -k, --keep Mantener (no borrar) los archivos de entrada
  -f, --force  Fuerza la sobreescritura del archivo de salida y (des)comprime enlaces
  -c, --stdout Escribe sobre la salida estándar y no borra los archivos de entrada   -q, --quiet suprime avisos; especificar dos veces para suprimir errores
  -v, --verbose prolijo; especificar dos veces para obtener más salida   -z, --compress      fuerza la compresión
  -d, --decompress    fuerza la descompresión
  -t, --test          prueba la integridad del archivo comprimido
  -l, --list          lista información sobre archivos .xz   Bloques
    Flujo Bloque CompOffset DescompOffset TamañoTotal TamañoDescomp Proporción Check   Bloques: %s
   Comprobar:              %s
   Tamaño comprimido: %s
   Memoria necesaria:      %s MiB
   Versión mínima de XZ Utils: %s
   Número de archivos: %s
   Ratio:              %s
   Tamaños en cabeceras:   %s
   Relleno de flujo: %s
   Flujos:
    Flujo Bloques PosiciónComp  PosiciónNoComp TamañoComp TamañoNoComp Proporción Comprobar Relleno   Flujos: %s
   Tamaño descomprimido: %s
  Modo de operación:
 se requieren %s MiB de memoria. El límite es %s. Se necesitan %s MiB de memoria. El límite está desactivado. %s archivo
 %s archivos
 %s página de inicio: <%s>
 %s:  %s: No es posible eliminar: %s %s: No es posible definir el grupo del archivo: %s %s: No es posible definir el propietario del archivo: %s %s: No esposible definir los permisos del archivo: %s %s: Cerrar el archivo ha fallado: %s %s: Error al leer los nombres de archivos: %s %s: Error buscando el archivo: %s %s: El archivo ya tiene el sufijo «%s», omitiendo %s: El archivo posee el bit setuid o setgid activo, omitiendo %s: El archivo posee el sticky bit activo, omitiendo %s: El archivo esta vacio %s: Parece que el archivo se ha movido, no eliminado %s: El nombre del archivo tiene un sufijo desconocido, omitiendo %s: Cadena de filtro: %s
 %s: El archivo de entrada posee más de un enlace duro, omitiendo %s: Sufijo del nombre del archivo inválido %s: sufijo multiplicador inválido %s: Nombre de opción inválido %s: Valor de opción inválido %s: Es un directorio, omitiendo %s: Es un enlace simbólico, omitiendo %s: No es un un archivo regular, omitiendo %s: Se encontró el caracter nulo cuando se leían los nombres de archivo, ¿quiso utilizar '--files0' en lugar de '--files'? %s: Las opciones deben de ser en la forma «nombre=valor» y cada par debe estar separado por comas %s: Error de lectura: %s %s búsqueda fallida cuando se intentaba crear un archivo disperso %s %s: Demasiado pequeño para ser un archivo .xz valido %s: Inesperado fin de archivo %s: Fin de entrada inesperado cuando se leían los nombres de archivo %s: Tipo de formato de archivo desconocido %s: Tipo de comprobación de identidad no permitido %s: El valor no es un entero decimal no-negativo %s: Con --format=raw, --suffix=.SUF se requiere a menos que se escriba sobre la salida estándar %s: Error de escritura: %s --list no permite leer desde la entrada estándar --list trabaja solo con archivos .xz (--format=xz o --format=auto) Tamaño de diccionario LZMA%c ajustado de %s MiB a %s MiB para no exceder el límite de uso de memoria de %s MiB No se pueden establecer los manejadores de señal No se pueden leer los datos desde la entrada estándar cuando se leen los nombres de archivo de la entrada estándar Los datos comprimidos no pueden ser leídos por un terminal Los datos comprimidos no pueden ser escritos por un terminal Los datos comprimidos están corruptos Compresión y descompresión con --robot aún no permitidas. La descomprension necesitara %s MiB de memoria. Desactivado Nombre de archivo vacío, omitiendo Error restaurando la marca O_APPEND a salida estándar: %s Formato de archivo no reconocido Error interno (bug) LZMA1 no puede usarse con el formato .xz Los argumentos obligatorios para las opciones largas también son obligatorios para las opciones cortas.
 El número máximo de filtros es cuatro Límite del uso de memoria para compresión:     Límite del uso de memoria para descompresión:   El limite de uso de memoria es muy bajo para la configuración del filtro dada. Límite de uso de memoria alcanzado No No se comprueba la integridad; no se verifica la integridad el archivo Ninguno Solo se puede especificar un archivo con «--files» o «--files0». Informar de los errores  a <%s> (en inglés o finlandés)
 Flujo  Bloques  Comprimido  NoComprimido  Ratio  Comp.   Archivo El formato .lzma solamente permite el filtro LZMA1 La variable de entorno %s contiene demasiados argumentos Las opciones exactas de los parámetros pueden variar entre versiones del software. La suma de lc y lp no debe exceder de 4 Cantidad total de memoria fisica (RAM):  Totales: Pruebe «%s --help» para más información. Fin de entrada inesperado Error desconocido Descono-11 Descono-12 Descono-13 Descono-14 Descono-15 Descono-2 Descono-3 Descono-5 Descono-6 Descono-7 Descono-8 Descono-9 Preconfiguración LZMA1/LZMA2 no permitida: %s Filtro de cadena u opciones de filtro no permitidas Opciones no permitidas Tipo de integridad no permitido; no se verifica la integridad del archivo Uso: %s [OPCIÓN]... [ARCHIVO]...
Comprimir o descomprimir ARCHIVOs en el formato .xz.

 La utilización de parámetros en modo crudo esta desaconsejada. Los sufijos válidos son «KiB» (2^10), «MiB» (2^20), y «GiB» (2^30). Falló la escritura en la salida estándar Sí PRIu32 PRIu64 The selected match finder requires at least nice=% Value of the option `%s' must be in the range [%, %] El buscador de coincidencias seleccionado requiere al menos =% El valor de la opción «%s» debe estar entre el rango [%, %] 