import "os" for Process
import "io" for File, Stdin

var exitCode = 0

for (arg in Process.arguments) {
  if (arg == "-") {
    var input = Stdin.readByte()
    while (input != null) {
      System.write(input)
      input = Stdin.readByte()
    }
  } else if (File.exists(arg)) {
    System.write(File.read(arg))
  } else {
    System.print("cat: %(arg): No such file or directory")
  }
}

// TODO: exit process with correct exitCode
