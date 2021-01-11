//
//  TouchBarButtons.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 1/8/21.
//

import SwiftUI

struct TouchBarButtons: View {
    var body: some View {
        Text("Button 1")
          .focusable()
          .touchBar {
            Button("button 1", action: {
              print("button 1")
            })
          }
      
      Text("Button 2")
        .focusable()
        .touchBar {
          Button("button 2", action: {
            print("button 2")
          }) 
        }
    }
}

struct TouchBarButtons_Previews: PreviewProvider {
    static var previews: some View {
        TouchBarButtons()
    }
}
