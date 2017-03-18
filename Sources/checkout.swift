import Guaka

var checkoutCommand = Command(
  usage: "checkout", configuration: configuration, run: execute)


private func configuration(command: Command) {
  command.add(flags: [])
  // Other configurations
}

private func execute(flags: Flags, args: [String]) {

  if let input = args.first {
    print("You passed \(input) to the checkout command")
    return
  }

  print("checkout called whoop whoop")
}
