// swift-tools-version:5.1
import PackageDescription



let package = Package(
	name: "Action",
	products: [
		.library(name: "Action", targets: ["Action"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-log.git", from: "1.4.0")
	],
	targets: [
		.target(name: "Action", dependencies: [
			.product(name: "Logging", package: "swift-log")
		])
	]
)
