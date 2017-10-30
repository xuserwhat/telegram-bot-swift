import PackageDescription

let package = Package(
    name: "TelegramBotSDK",
    targets: [Target(name: "TelegramBotSDK")],
    dependencies: [
        .Package(url: "https://github.com/zmeyc/CCurl.git", majorVersion: 0),
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 17),
        .Package(url: "https://github.com/serhii-londar/ScannerUtils.git", majorVersion: 1)
    ]
)

