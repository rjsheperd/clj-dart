import "dart:core" as dc;
import "main.dart" as lcoa_main;
import "../cljd/core.dart" as lcoc_core;
import "dart:ffi" as d_ffi;
import "dart:io" as d_io;
import "package:path/path.dart" as p_path;
import "dart:developer" as d_developer;

// BEGIN get-lib-path
dc.dynamic get_lib_path(){
if(d_io.Platform.isMacOS){
return p_path.join(d_io.Directory.current.path, "hello_world", "libhello.dylib", );
}
if(d_io.Platform.isWindows){
return p_path.join(d_io.Directory.current.path, "hello_world", "hello_library", "Debug", "hello.dll", );
}
return p_path.join(d_io.Directory.current.path, "hello_world", "libhello.so", );
}

// END get-lib-path

// BEGIN main
dc.dynamic main(){
final dc.dynamic lib_path$1=lcoa_main.get_lib_path();
final d_ffi.DynamicLibrary lib$1=(d_ffi.DynamicLibrary.open((lib_path$1 as dc.String), ));
final d_ffi.Pointer<d_ffi.NativeType> castable$1=(lib$1.lookup("hello_world", ));
final d_ffi.Pointer<d_ffi.NativeFunction> casted$1=(castable$1.cast<d_ffi.NativeFunction>());
final d_ffi.Pointer<d_ffi.NativeFunction> hello$UNDERSCORE_world$1=casted$1;
return (lcoc_core.println.$_invoke$3(lib_path$1, lib$1, hello$UNDERSCORE_world$1, ));
}

// END main
