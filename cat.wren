import "os" for Process
import "io" for File

for (arg in Process.arguments) {
  if (File.exists(arg)) {
    System.write(File.read(arg))
  }
}
