��    +      t  ;   �      �     �     �  3   �  <   %  D   b  J   �  ?   �  9   2  +   l  �   �  �   }  �  b  '   8   =   `   #   �   )   �      �      !     (!  #   H!  $   l!     �!  9   �!  &   �!     
"     "     -"     @"     W"  (   e"  ;   �"     �"     �"     #     #     =#  %   Z#     �#     �#  !   �#     �#     �#  �  $     �%     �%  4   &  <   7&  D   t&  J   �&  ?   '  :   D'  ,   '  �   �'  �   �(  �  x)  '   NB  =   vB  #   �B  )   �B     C     C     >C  #   ^C  $   �C     �C  9   �C  '   �C     !D     2D     HD     ]D     vD  )   �D  <   �D     �D     E     $E     BE     `E  %   }E     �E     �E  !   �E     F     !F            
      !                    "       )   	                  (                 *                                     %   +   '            &   $                       #                                 
    Address            Length
 
    Address    Length
       --plugin NAME      Load the specified plugin
    --add-indirect         Add dll indirects to export file.
    --dllname <name>       Name of input dll to put into output lib.
    -D --dllname <name>       Name of input dll to put into interface lib.
    -a --add-indirect         Add dll indirects to export file.
   --plugin <name>              Load the specified plugin
   --plugin <p> - load the specified plugin
   -D --enable-deterministic-archives
                                   Produce deterministic output when stripping archives
  -U --disable-deterministic-archives
                                   Disable -D behavior (default)
   -D --enable-deterministic-archives
                                   Produce deterministic output when stripping archives (default)
  -U --disable-deterministic-archives
                                   Disable -D behavior
   -j --only-section <name>         Only copy section <name> into the output
     --add-gnu-debuglink=<file>    Add section .gnu_debuglink linking to <file>
  -R --remove-section <name>       Remove section <name> from the output
  -S --strip-all                   Remove all symbol and relocation information
  -g --strip-debug                 Remove all debugging symbols & sections
     --strip-dwo                   Remove all DWO sections
     --strip-unneeded              Remove all symbols not needed by relocations
  -N --strip-symbol <name>         Do not copy symbol <name>
     --strip-unneeded-symbol <name>
                                   Do not copy symbol <name> unless needed by
                                     relocations
     --only-keep-debug             Strip everything but the debug information
     --extract-dwo                 Copy only DWO sections
     --extract-symbol              Remove section contents but keep symbols
  -K --keep-symbol <name>          Do not strip symbol <name>
     --keep-file-symbols           Do not strip file symbol(s)
     --localize-hidden             Turn all ELF hidden symbols into locals
  -L --localize-symbol <name>      Force symbol <name> to be marked as a local
     --globalize-symbol <name>     Force symbol <name> to be marked as a global
  -G --keep-global-symbol <name>   Localize all symbols except <name>
  -W --weaken-symbol <name>        Force symbol <name> to be marked as a weak
     --weaken                      Force all global symbols to be marked as weak
  -w --wildcard                    Permit wildcard in symbol comparison
  -x --discard-all                 Remove all non-global symbols
  -X --discard-locals              Remove any compiler-generated symbols
  -i --interleave [<number>]       Only copy N out of every <number> bytes
     --interleave-width <number>   Set N for --interleave
  -b --byte <num>                  Select byte <num> in every interleaved block
     --gap-fill <val>              Fill gaps between sections with <val>
     --pad-to <addr>               Pad the last section up to address <addr>
     --set-start <addr>            Set the start address to <addr>
    {--change-start|--adjust-start} <incr>
                                   Add <incr> to the start address
    {--change-addresses|--adjust-vma} <incr>
                                   Add <incr> to LMA, VMA and start addresses
    {--change-section-address|--adjust-section-vma} <name>{=|+|-}<val>
                                   Change LMA and VMA of section <name> by <val>
     --change-section-lma <name>{=|+|-}<val>
                                   Change the LMA of section <name> by <val>
     --change-section-vma <name>{=|+|-}<val>
                                   Change the VMA of section <name> by <val>
    {--[no-]change-warnings|--[no-]adjust-warnings}
                                   Warn if a named section does not exist
     --set-section-flags <name>=<flags>
                                   Set section <name>'s properties to <flags>
     --add-section <name>=<file>   Add section <name> found in <file> to output
     --dump-section <name>=<file>  Dump the contents of section <name> into <file>
     --rename-section <old>=<new>[,<flags>] Rename section <old> to <new>
     --long-section-names {enable|disable|keep}
                                   Handle long section names in Coff objects.
     --change-leading-char         Force output format's leading character style
     --remove-leading-char         Remove leading character from global symbols
     --reverse-bytes=<num>         Reverse <num> bytes at a time, in output sections with content
     --redefine-sym <old>=<new>    Redefine symbol name <old> to <new>
     --redefine-syms <file>        --redefine-sym for all symbol pairs 
                                     listed in <file>
     --srec-len <number>           Restrict the length of generated Srecords
     --srec-forceS3                Restrict the type of generated Srecords to S3
     --strip-symbols <file>        -N for all symbols listed in <file>
     --strip-unneeded-symbols <file>
                                   --strip-unneeded-symbol for all symbols listed
                                     in <file>
     --keep-symbols <file>         -K for all symbols listed in <file>
     --localize-symbols <file>     -L for all symbols listed in <file>
     --globalize-symbols <file>    --globalize-symbol for all in <file>
     --keep-global-symbols <file>  -G for all symbols listed in <file>
     --weaken-symbols <file>       -W for all symbols listed in <file>
     --alt-machine-code <index>    Use the target's <index>'th alternative machine
     --writable-text               Mark the output text as writable
     --readonly-text               Make the output text write protected
     --pure                        Mark the output file as demand paged
     --impure                      Mark the output file as impure
     --prefix-symbols <prefix>     Add <prefix> to start of every symbol name
     --prefix-sections <prefix>    Add <prefix> to start of every section name
     --prefix-alloc-sections <prefix>
                                   Add <prefix> to start of every allocatable
                                     section name
     --file-alignment <num>        Set PE file alignment to <num>
     --heap <reserve>[,<commit>]   Set PE reserve/commit heap to <reserve>/
                                   <commit>
     --image-base <address>        Set PE image base to <address>
     --section-alignment <num>     Set PE section alignment to <num>
     --stack <reserve>[,<commit>]  Set PE reserve/commit stack to <reserve>/
                                   <commit>
     --subsystem <name>[:<version>]
                                   Set PE subsystem to <name> [& <version>]
     --compress-debug-sections     Compress DWARF debug sections using zlib
     --decompress-debug-sections   Decompress DWARF debug sections using zlib
  -v --verbose                     List all object files modified
  @<file>                          Read options from <file>
  -V --version                     Display this program's version number
  -h --help                        Display this output
     --info                        List object formats & architectures supported
 %s: no recognized debugging information %s: warning: shared libraries can not have uninitialized data %s:%d: garbage found at end of line Print width has not been initialized (%d) Unrecognized XCOFF type %d
 Unrecognized debug option '%s'
 Unrecognized debug section: %s
 Unrecognized demangle component %d
 Unrecognized demangled builtin type
 Unrecognized form: %lu
 Warning: '%s' has negative size, probably it is too large can't create %s file `%s' for output.
 dialog control dialog control data dialog control end dialog font point size dialog header segment split info is not nul terminated sorry - this program has been built without plugin support
 unrecognized --endian type `%s' unrecognized -E option unrecognized C++ abbreviation unrecognized C++ default type unrecognized C++ misc record unrecognized C++ object overhead spec unrecognized C++ object spec unrecognized C++ reference type unrecognized cross reference type unrecognized section flag `%s' unrecognized: %-7lx Project-Id-Version: binutils
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2014-02-10 09:42+1030
PO-Revision-Date: 2014-08-20 16:42+0000
Last-Translator: Anthony Harrington <untaintableangel@ubuntu.com>
Language-Team: English (United Kingdom) <en_GB@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2016-10-09 10:34+0000
X-Generator: Launchpad (build 18227)
 
    Address Length
 
    Address Length
       --plugin NAME      Load the specified plug-in
    --add-indirect         Add DLL indirects to export file.
    --dllname <name>       Name of input DLL to put into output lib.
    -D --dllname <name>       Name of input DLL to put into interface lib.
    -a --add-indirect         Add DLL indirects to export file.
   --plugin <name>              Load the specified plug-in
   --plugin <p> - load the specified plug-in
   -D --enable-deterministic-archives
                                   Produce deterministic output when stripping archives
  -U --disable-deterministic-archives
                                   Disable -D behaviour (default)
   -D --enable-deterministic-archives
                                   Produce deterministic output when stripping archives (default)
  -U --disable-deterministic-archives
                                   Disable -D behaviour
   -j --only-section <name>         Only copy section <name> into the output
     --add-gnu-debuglink=<file>    Add section .gnu_debuglink linking to <file>
  -R --remove-section <name>       Remove section <name> from the output
  -S --strip-all                   Remove all symbol and relocation information
  -g --strip-debug                 Remove all debugging symbols & sections
     --strip-dwo                   Remove all DWO sections
     --strip-unneeded              Remove all symbols not needed by relocations
  -N --strip-symbol <name>         Do not copy symbol <name>
     --strip-unneeded-symbol <name>
                                   Do not copy symbol <name> unless needed by
                                     relocations
     --only-keep-debug             Strip everything but the debug information
     --extract-dwo                 Copy only DWO sections
     --extract-symbol              Remove section contents but keep symbols
  -K --keep-symbol <name>          Do not strip symbol <name>
     --keep-file-symbols           Do not strip file symbol(s)
     --localize-hidden             Turn all ELF hidden symbols into locals
  -L --localize-symbol <name>      Force symbol <name> to be marked as a local
     --globalize-symbol <name>     Force symbol <name> to be marked as a global
  -G --keep-global-symbol <name>   Localise all symbols except <name>
  -W --weaken-symbol <name>        Force symbol <name> to be marked as a weak
     --weaken                      Force all global symbols to be marked as weak
  -w --wildcard                    Permit wildcard in symbol comparison
  -x --discard-all                 Remove all non-global symbols
  -X --discard-locals              Remove any compiler-generated symbols
  -i --interleave [<number>]       Only copy N out of every <number> bytes
     --interleave-width <number>   Set N for --interleave
  -b --byte <num>                  Select byte <num> in every interleaved block
     --gap-fill <val>              Fill gaps between sections with <val>
     --pad-to <addr>               Pad the last section up to address <addr>
     --set-start <addr>            Set the start address to <addr>
    {--change-start|--adjust-start} <incr>
                                   Add <incr> to the start address
    {--change-addresses|--adjust-vma} <incr>
                                   Add <incr> to LMA, VMA and start addresses
    {--change-section-address|--adjust-section-vma} <name>{=|+|-}<val>
                                   Change LMA and VMA of section <name> by <val>
     --change-section-lma <name>{=|+|-}<val>
                                   Change the LMA of section <name> by <val>
     --change-section-vma <name>{=|+|-}<val>
                                   Change the VMA of section <name> by <val>
    {--[no-]change-warnings|--[no-]adjust-warnings}
                                   Warn if a named section does not exist
     --set-section-flags <name>=<flags>
                                   Set section <name>'s properties to <flags>
     --add-section <name>=<file>   Add section <name> found in <file> to output
     --dump-section <name>=<file>  Dump the contents of section <name> into <file>
     --rename-section <old>=<new>[,<flags>] Rename section <old> to <new>
     --long-section-names {enable|disable|keep}
                                   Handle long section names in Coff objects.
     --change-leading-char         Force output format's leading character style
     --remove-leading-char         Remove leading character from global symbols
     --reverse-bytes=<num>         Reverse <num> bytes at a time, in output sections with content
     --redefine-sym <old>=<new>    Redefine symbol name <old> to <new>
     --redefine-syms <file>        --redefine-sym for all symbol pairs 
                                     listed in <file>
     --srec-len <number>           Restrict the length of generated Srecords
     --srec-forceS3                Restrict the type of generated Srecords to S3
     --strip-symbols <file>        -N for all symbols listed in <file>
     --strip-unneeded-symbols <file>
                                   --strip-unneeded-symbol for all symbols listed
                                     in <file>
     --keep-symbols <file>         -K for all symbols listed in <file>
     --localize-symbols <file>     -L for all symbols listed in <file>
     --globalize-symbols <file>    --globalize-symbol for all in <file>
     --keep-global-symbols <file>  -G for all symbols listed in <file>
     --weaken-symbols <file>       -W for all symbols listed in <file>
     --alt-machine-code <index>    Use the target's <index>'th alternative machine
     --writable-text               Mark the output text as writable
     --readonly-text               Make the output text write protected
     --pure                        Mark the output file as demand paged
     --impure                      Mark the output file as impure
     --prefix-symbols <prefix>     Add <prefix> to start of every symbol name
     --prefix-sections <prefix>    Add <prefix> to start of every section name
     --prefix-alloc-sections <prefix>
                                   Add <prefix> to start of every allocatable
                                     section name
     --file-alignment <num>        Set PE file alignment to <num>
     --heap <reserve>[,<commit>]   Set PE reserve/commit heap to <reserve>/
                                   <commit>
     --image-base <address>        Set PE image base to <address>
     --section-alignment <num>     Set PE section alignment to <num>
     --stack <reserve>[,<commit>]  Set PE reserve/commit stack to <reserve>/
                                   <commit>
     --subsystem <name>[:<version>]
                                   Set PE subsystem to <name> [& <version>]
     --compress-debug-sections     Compress DWARF debug sections using zlib
     --decompress-debug-sections   Decompress DWARF debug sections using zlib
  -v --verbose                     List all object files modified
  @<file>                          Read options from <file>
  -V --version                     Display this program's version number
  -h --help                        Display this output
     --info                        List object formats & architectures supported
 %s: no recognised debugging information %s: warning: shared libraries can not have uninitialised data %s:%d: rubbish found at end of line Print width has not been initialised (%d) Unrecognised XCOFF type %d
 Unrecognised debug option '%s'
 Unrecognised debug section: %s
 Unrecognised demangle component %d
 Unrecognised demangled builtin type
 Unrecognised form: %lu
 Warning: '%s' has negative size, it is probably too large cannot create %s file `%s' for output.
 dialogue control dialogue control data dialogue control end dialogue font point size dialogue header segment split info is not null-terminated sorry - this program has been built without plug-in support
 unrecognised --endian type `%s' unrecognised -E option unrecognised C++ abbreviation unrecognised C++ default type unrecognised C++ misc record unrecognised C++ object overhead spec unrecognised C++ object spec unrecognised C++ reference type unrecognised cross reference type unrecognised section flag `%s' unrecognised: %-7lx 