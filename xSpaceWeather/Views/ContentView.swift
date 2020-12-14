//
//  ContentView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 11/26/20.
//

import SwiftUI

struct ContentView: View {
  @StateObject var networkService = NetworkService()
  
    var body: some View {
      VStack {
        HStack {
          
          ButtonView(networkService: networkService)
          Spacer()
          
          ImageView(networkService: networkService)

          }// outer HStack
      }
      .frame(minWidth: 800, maxWidth: 800, minHeight: 700, maxHeight: 700)
    }// outer container VStack
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
