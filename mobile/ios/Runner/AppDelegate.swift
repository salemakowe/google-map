import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    //Google Map API Key
    GMSServices.provideAPIKey("AIzaSyA24HDZH0MXeNd3Oi-ABvby1JnfElXoEgw")


    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
