//
//  ButtonView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 12/7/20.
//

import SwiftUI
// https://services.swpc.noaa.gov/images/swx-overview-large.gif

struct ButtonView: View {
  @EnvironmentObject var networkService: NetworkService
  
    var body: some View {
      VStack {
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://services.swpc.noaa.gov/images/swx-overview-small.gif", imageCaption: "Space Weather", imageNote: "")
        }) {
            Text("Space Weather")
        }
      
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://services.swpc.noaa.gov/images/planetary-k-index.gif", imageCaption: "Planetary K-Index", imageNote: "")
        }) {
            Text("K-Index")
        }
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://www.lu9da.org/prop_graph/imagen1.8.jpg", imageCaption: "Other", imageNote: "")
        }) {
            Text("Other")
        }
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://services.swpc.noaa.gov/images/animations/enlil/latest.jpg", imageCaption: "(CME) Solar Wind Prediction Model", imageNote: "This is good for viewing CME events, and the corresponding solar wind speed and density for use in predicting both Auroral events and HF blackout conditions.") // REWORD THIS!!!
        }) {
            Text("CME Prediction")
        }
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://www.sws.bom.gov.au/Images/HF%20Systems/Global%20HF/Ionospheric%20Map/WorldIMap.gif", imageCaption: "Ionospheric World Map", imageNote: "")
        }) {
            Text("Ionospheric Map")
        }
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://www.hamqsl.com/solarsystem.php", imageCaption: "Other", imageNote: "")
        }) {
            Text("Other")
        }
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: "https://www.hamqsl.com/solargraph.php", imageCaption: "Other", imageNote: "")
        }) {
            Text("Other")
        }

      } // left VStack
    .frame(minWidth: 120, maxWidth: 120, maxHeight: .infinity)
    .border(Color.red)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().environmentObject(NetworkService())
    }
}

// http://www.lu9da.org/prop_graph/imagen1.8.jpg
// http://www.hamqsl.com/solar101vhf.php
// http://www.hamqsl.com/solar101sc.php
// http://www.hamqsl.com/solarsystem.php
// http://www.hamqsl.com/solargraph.php

// http://services.swpc.noaa.gov/images/animations/enlil/latest.jpg
