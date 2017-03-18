import PackageDescription
let package = Package(
  name: "foobar",
  dependencies: [
    .Package(url: "https://github.com/oarrabi/Guaka.git", majorVersion: 0),
    ]
)
