// swift-tools-version:5.2

import PackageDescription

let package = Package(
	name: "PerfectMustache",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.library(name: "PerfectMustache", targets: ["PerfectMustache"])
	],
	dependencies: [
        .package(name: "PerfectLib", url: "https://github.com/123FLO321/Perfect.git", .branch("swift5")),
	],
	targets: [
		.target(name: "PerfectMustache", dependencies: ["PerfectLib"]),
		.testTarget(name: "PerfectMustacheTests", dependencies: ["PerfectMustache"])
	]
)
