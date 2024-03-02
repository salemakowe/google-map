import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // my API Key for iOS
    GMSServices.provideAPIKey("AIzaSyDJ0n5n4HTMCOFfWbdajnRmA8kCbRWklu8")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
