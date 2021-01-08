//
//  TouchBarButtons.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 1/8/21.
//

import SwiftUI

struct TouchBarButtons: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .focusable()
          .touchBar {
            Button(action: {
              print("button 1")
            }) {
              Text("button 1")
            }
          }
      
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .focusable()
        .touchBar {
          Button(action: {
            print("button 1")
          }) {
            Text("button 1")
          }
        }
    }
}

struct TouchBarButtons_Previews: PreviewProvider {
    static var previews: some View {
        TouchBarButtons()
    }
}
