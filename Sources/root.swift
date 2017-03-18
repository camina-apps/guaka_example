import Guaka

var rootCommand = Command(
  usage: "foobar", configuration: configuration, run: execute)


private func configuration(command: Command) {

  let version = Flag(shortName: "v", longName: "version", value: false, description: "Prints the version", inheritable: false)
  command.add(flags: [version])

  // Other configurations
}

private func execute(flags: Flags, args: [String]) {

    if let hasVersion = flags.getBool(name: "version"), hasVersion == true {
        print("Version is 1.0.0")
        return
    }

    print("foobar called")
}
