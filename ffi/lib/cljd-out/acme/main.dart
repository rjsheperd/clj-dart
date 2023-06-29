import "dart:core" as dc;
import "main.dart" as lcoa_main;
import "../cljd/core.dart" as lcoc_core;
import "dart:ffi" as d_ffi;
import "dart:io" as d_io;
import "package:path/path.dart" as p_path;

// BEGIN main
dc.dynamic main(){
late final dc.String lib_path$1;
if(d_io.Platform.isMacOS){
lib_path$1=p_path.join(d_io.Directory.current.path, "hello_library", "libhello.dylib", );
}else if(d_io.Platform.isWindows){
lib_path$1=p_path.join(d_io.Directory.current.path, "hello_library", "Debug", "hello.dll", );
}else{
lib_path$1=p_path.join(d_io.Directory.current.path, "hello_library", "libhello.so", );
}
final d_ffi.DynamicLibrary dylib$1=(d_ffi.DynamicLibrary.open(lib_path$1, ));
final dc.Function hello$1=(d_ffi.NativeFunctionPointer((dylib$1.lookup<d_ffi.NativeFunction<d_ffi.Void Function()>>("hello_world", )), ).asFunction());
return hello$1();
}

// END main
