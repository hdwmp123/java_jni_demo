echo '001 Java 编译为 Class 文件'
javac ./com/example/NativeLibrary.java

echo '002 根据Class文件 生成 h 文件'
javah -d ./com/example/ com.example.NativeLibrary

echo '003 根据c文件 生成 dylib 文件(c文件需要手动编写)'
gcc -I "$JAVA_HOME/include" -I "$JAVA_HOME/include/darwin" -shared -o ./com/example/libNativeLibrary.dylib ./com/example/NativeLibrary.c

echo '004 Java 编译为 Class 文件 其实可以省略'
javac ./com/example/NativeLibrary.java

echo '005 执行Class文件'
java -Djava.library.path=./com/example com.example.NativeLibrary

echo '完毕'