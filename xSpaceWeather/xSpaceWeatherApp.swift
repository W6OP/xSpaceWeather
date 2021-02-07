//
//  xSpaceWeatherApp.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 11/26/20.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationDidFinishLaunching(_ notification: Notification) {
    //print("hello")
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}

@main
struct XSpaceWeatherApp: App {

  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  init() {

  }
  var body: some Scene {
    WindowGroup {
      ContentView(endpoints: endpointData)
    }
  }
}
