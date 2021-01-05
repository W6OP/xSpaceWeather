//
//  ContentView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 11/26/20.
//

import SwiftUI

struct ContentView: View {
  @StateObject var networkService = NetworkService()
  var endpoints: [EnpointIdentifier]
  
  var body: some View {
    VStack {
      HStack {
        //replacement for ButtonView(networkService: networkService)
        VStack {
          ForEach(endpoints) { endpoint in
            Button(action: {
              self.networkService.retrieveImage(imageURL: endpoint.buttonAddress, imageCaption: endpoint.buttonCaption, imageNote: endpoint.buttonComment)
            }) {
              Text(endpoint.buttonText)
                .prestyledText
            }
            .selectButton()
          }
        }  // VStack
        .padding()
        Divider()
        
        Spacer()
        
        ImageView(networkService: networkService)
        
      }// HStack
    }
    .frame(minWidth: 800, maxWidth: 800, minHeight: 700, maxHeight: 700)
  }// VStack
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(endpoints: endpointData)
  }
}
