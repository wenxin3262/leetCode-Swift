import Foundation

private let fh = NSFileHandle.fileHandleWithStandardInput()
func main() {
    for argument in Process.arguments {
      switch argument {
        case "arg1":
          print("first argument")

        case "arg2":
          print("second argument")
        default:
          print("an argument")
      }
    }
}

func chooseLevel() -> Int {
  while true {
    print("Click to choose a level.\n 1.Easy \n 2.Medium \n 3.Hard");
    if let response = readLine(stripNewline: true) {
      if let responseInt = Int(response) {
        if responseInt >= 1 && responseInt <= 3 {
          return responseInt
        }
      }
    }
    print("Invalid input, please enter 1, 2, or 3.")
  }
}

main()
let level = chooseLevel()
print("You have chosen \(level)")
