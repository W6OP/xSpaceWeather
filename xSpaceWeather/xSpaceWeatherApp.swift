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
struct xSpaceWeatherApp: App {
  
  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  
  init() {
    
  }
  var body: some Scene {
    WindowGroup {
      //ContentView()
      ContentView()//.environmentObject(NetworkService())
    }
    
          //For instance, the one given below creates a Preference Menu scene for the macOS platform.
//          #if(MacOS)
//            Settings {
//              ContentView()
//            }
//          #endif
  }
}
