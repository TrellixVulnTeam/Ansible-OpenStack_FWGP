��    5      �  G   l      �     �     �     �     �     �  )   �  )   %     O  �   d  7  0  �  h  B   J
  l  �
  �   �  Z     '   �  '        *  $   H     m     �  &   �  2   �  3   �  /   2  /   b  =   �     �  %   �  2        D  $   \  &   �  +   �  '   �  ,   �  &   )  '   P  *   x  +   �     �     �     �          #     :  &   X          �     �     �     �  �  �     �     �     �  "   �      �  (   �  (        H  �   f  _  =    �  O   �  �    �   �  c   *  7   �  :   �  "     )   $     N  (   g  4   �  2   �  A   �  B   :  ?   }  S   �       +   -  :   Y     �  -   �  3   �  9      8   K   A   �   6   �   :   �   1   8!  6   j!  )   �!     �!     �!     �!  !   "  "   9"  5   \"     �"     �"     �"     �"     �"                 	              
   5                                 -           !          1      &             *      3   +      $                    )       "              %   #         ,                         '   /   .         4          0   2   (    	%s -B pathname...
 	%s -D pathname...
 	%s -R pathname...
 	%s -b acl dacl pathname...
 	%s -d dacl pathname...
 	%s -l pathname...	[not IRIX compatible]
 	%s -r pathname...	[not IRIX compatible]
 	%s acl pathname...
       --set=acl           set the ACL of file(s), replacing the current ACL
      --set-file=file     read ACL entries to set from file
      --mask              do recalculate the effective rights mask
   -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P, --physical          physical walk, do not follow symbolic links
      --restore=file      restore ACLs (inverse of `getfacl -R')
      --test              test mode (ACLs are not modified)
   -a,  --access           display the file access control list only
  -d, --default           display the default access control list only
  -c, --omit-header       do not display the comment header
  -e, --all-effective     print all effective rights
  -E, --no-effective      print no effective rights
  -s, --skip-base         skip files that only have the base entries
  -R, --recursive         recurse into subdirectories
  -L, --logical           logical walk, follow symbolic links
  -P, --physical          physical walk, do not follow symbolic links
  -t, --tabular           use tabular output format
  -n, --numeric           print numeric user/group identifiers
  -p, --absolute-names    don't strip leading '/' in pathnames
   -d, --default           display the default access control list
   -m, --modify=acl        modify the current ACL(s) of file(s)
  -M, --modify-file=file  read ACL entries to modify from file
  -x, --remove=acl        remove entries from the ACL(s) of file(s)
  -X, --remove-file=file  read ACL entries to remove from file
  -b, --remove-all        remove all extended ACL entries
  -k, --remove-default    remove the default ACL
   -n, --no-mask           don't recalculate the effective rights mask
  -d, --default           operations apply to the default ACL
   -v, --version           print version and exit
  -h, --help              this help text
 %s %s -- get file access control lists
 %s %s -- set file access control lists
 %s: %s in line %d of file %s
 %s: %s in line %d of standard input
 %s: %s: %s in line %d
 %s: %s: Cannot change mode: %s
 %s: %s: Cannot change owner/group: %s
 %s: %s: Malformed access ACL `%s': %s at entry %d
 %s: %s: Malformed default ACL `%s': %s at entry %d
 %s: %s: No filename found in line %d, aborting
 %s: %s: Only directories can have default ACLs
 %s: No filename found in line %d of standard input, aborting
 %s: Option -%c incomplete
 %s: Option -%c: %s near character %d
 %s: Removing leading '/' from absolute path names
 %s: Standard input: %s
 %s: access ACL '%s': %s at entry %d
 %s: cannot get access ACL on '%s': %s
 %s: cannot get access ACL text on '%s': %s
 %s: cannot get default ACL on '%s': %s
 %s: cannot get default ACL text on '%s': %s
 %s: cannot set access acl on "%s": %s
 %s: cannot set default acl on "%s": %s
 %s: error removing access acl on "%s": %s
 %s: error removing default acl on "%s": %s
 %s: malloc failed: %s
 %s: opendir failed: %s
 Duplicate entries Invalid entry type Missing or wrong entry Multiple entries of same type Try `%s --help' for more information.
 Usage:
 Usage: %s %s
 Usage: %s [-%s] file ...
 preserving permissions for %s setting permissions for %s Project-Id-Version: acl-2.2.43.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-02-07 11:10+0000
PO-Revision-Date: 2011-01-01 08:14+0000
Last-Translator: Paco Molinero <paco@byasl.com>
Language-Team: Spanish
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-06-27 16:54+0000
X-Generator: Launchpad (build 18115)
X-Poedit-Language: Spanish
 	%s -B ruta...
 	%s -D ruta...
 	%s -R ruta...
 	%s -b nombre de ruta ACL DACL...
 	%s -d nombre de ruta de ACL...
 	%s -l ruta...	[no compatible con IRIX]
 	%s -r ruta...	[no compatible con IRIX]
 	%s nombre de ruta de ACL...
       --set=acl        establecer ACL(s) de archivo(s), reemplazando el actual
      --set-file=arch  leer entradas ACL a establecer desde "arch"
      --mask           recalcular la máscara de permisos efectivos
   -R, --recursive         recorrer subdirectorios recursivamente
  -L, --logical           recorrido lógico, siguiendo enlaces simbólicos
  -P, --physical          recorrido físico, sin seguir enlaces simbólicos
      --restore=file      restaurar ACL (inverso de «getfacl -R»)
      --test              modo de prueba (los ACL no se modifican)
   -a, --acceso muestra la lista de control de acceso del archivo únicamente
  -d, --predeterminado muestra la lista de control de acceso predeterminado únicamente
  -c, --omitir encabezado no muestra el encabezado del comentario
  -e, --todo-efectivo imprime todos los derechos efectivos
  -E, --no-efectivo imprime los derechos no efectivos
  -s, --omitir-bases omite archivos que presentan únicamente entradas base
  -R, --recurrente recurrente a los subdirectorios
  -L, --lógico caminata lógica, sigue enlaces simbólicos
  -P, --física caminata física, no sigue los enlaces simbólicos
  -t, --tabular usar formato de salida tabulado
  -n, --numérico imprimir identificadores numéricos de usuarios/grupos
  -p, --nombres-absolutos no elimina «/» inicial en los nombres de las rutas
   -d, --default           mostrar la lista de control de acceso predeterminada
   -m, --modify=acl         modificar ACL actual(es) de archivo(s)
  -M, --modify-file=arch   leer entradas ACL desde "arch"
  -x, --remove=acl         eliminar entradas desde ACL(s) de archivo(s)
  -X, --remove-file=arch   leer entradas de ACL a borrar desde "arch"
  -b, --remove-all         eliminar todas las entradas ACL extendidas
  -k, --remove-default     eliminar el ACL predeterminado
   -n, --no-mask           no recalcular la máscara de derechos efectivos
  -d, --default           las operaciones afectal al ACL predeterminado
   -v, --version           imprime la versión y sale
  -h, --help              este texto de ayuda
 %s %s -- obtener listas de control de acceso a archivo
 %s %s -- establecer listas de control de acceso a archivo
 %s: %s en línea %d de archivo %s
 %s: %s en línea %d de entrada estándar
 %s: %s: %s en línea %d
 %s: %s: No se puede cambiar el modo: %s
 %s: %s: No se pudo cambiar el propietario/grupo: %s
 %s: %s: ACL incorrecto «%s»: %s en posición %d
 %s: %s: ACL predeterminado incorrecto «%s»: %s en posición %d
 %s: %s: No se encontró nombre de archivo en línea %d, abortando
 %s: %s: Sólo los directorios pueden tener ACL predeterminados
 %s: No se encontró nombre de archivo en línea %d de entrada estándar, abortando
 %s: Opción -%c incompleta
 %s: Opción -%c: %s cerca del carácter %d
 %s: Eliminando «/» inicial en nombres de ruta absolutos
 %s: Entrada estándar: %s
 %s: ACL de acceso «%s»: %s en posición %d
 %s: no se pudo obtener ACL de acceso en «%s»: %s
 %s: no se pudo obtener texto ACL de acceso en «%s»: %s
 %s: no se pudo obtener ACL predeterminado en «%s»: %s
 %s: no se pudo obtener texto de ACL predeterminado en «%s»: %s
 %s: no se pudo establecer ACL de acceso en «%s»: %s
 %s: no se pudo establecer ACL predeterminado a «%s»: %s
 %s: error eliminando ACL de acceso en «%s»: %s
 %s: error eliminando ACL predeterminado en «%s»: %s
 %s: falló la asignación de memoria: %s
 %s: falló la apertura: %s
 Entradas duplicadas Tipo de posición inválido Falta una posición o es errónea Múltiples entradas del mismo tipo Pruebe «%s --help» para obtener más información.
 Uso:
 Uso: %s %s
 Uso: %s [-%s] archivo ...
 manteniendo permisos a %s estableciendo permisos a %s 