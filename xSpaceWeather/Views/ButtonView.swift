//
//  ButtonView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 12/7/20.
//

import SwiftUI

struct ButtonView: View {
  @EnvironmentObject var networkService: NetworkService
  let buttonWidth = CGFloat(110)
  
    var body: some View {
      VStack {
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button1Address, imageCaption: Endpoint.button1Caption, imageNote: Endpoint.button1Comment)
        }) {
          Text(Endpoint.button1Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
      
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button2Address, imageCaption: Endpoint.button2Caption, imageNote: Endpoint.button2Comment)
        }) {
            Text(Endpoint.button2Text)
              .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button3Address, imageCaption: Endpoint.button3Caption, imageNote: Endpoint.button3Comment)
        }) {
            Text(Endpoint.button3Text)//.padding(.horizontal, 10)
              .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button4Address, imageCaption: Endpoint.button4Caption, imageNote: Endpoint.button4Comment)
        }) {
            Text(Endpoint.button4Text)
              .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button5Address, imageCaption: Endpoint.button5Caption, imageNote: Endpoint.button5Comment)
        }) {
          Text(Endpoint.button5Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button6Address, imageCaption: Endpoint.button6Caption, imageNote: Endpoint.button6Comment)
        }) {
          Text(Endpoint.button6Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button7Address, imageCaption: Endpoint.button7Caption, imageNote: Endpoint.button7Comment)
        }) {
          Text(Endpoint.button7Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()

      } // left VStack
    .frame(minWidth: 130, maxWidth: 130, maxHeight: .infinity)
    .border(Color.red)

    } // end body
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().environmentObject(NetworkService())
    }
}


// Endpoint definitions
private struct Endpoint {
   static let button1Address = "https://services.swpc.noaa.gov/images/swx-overview-small.gif"
   static let button1Caption = "Space Weather"
   static let button1Comment = ""
   static let button1Text = "Space Weather"
  
  static let button2Address = "https://services.swpc.noaa.gov/images/planetary-k-index.gif"
  static let button2Caption = "Planetary K-Index"
  static let button2Comment = ""
  static let button2Text = "K-Index"
  
  static let button3Address = "https://www.lu9da.org/prop_graph/imagen1.8.jpg"
  static let button3Caption = ""
  static let button3Comment = ""
  static let button3Text = "Other"
  
  static let button4Address = "https://services.swpc.noaa.gov/images/animations/enlil/latest.jpg"
  static let button4Caption = "(CME) Solar Wind Prediction Model"
  // TODO: REWORD THIS!!!
  static let button4Comment = "This is good for viewing CME events, and the corresponding solar wind speed and density for use in predicting both Auroral events and HF blackout conditions."
  static let button4Text = "CME Prediction"
  
  static let button5Address = "https://www.sws.bom.gov.au/Images/HF%20Systems/Global%20HF/Ionospheric%20Map/WorldIMap.gif"
  static let button5Caption = "Ionospheric World Map"
  static let button5Comment = ""
  static let button5Text = "Ionospheric Map"
  
  static let button6Address = "https://www.hamqsl.com/solarsystem.php"
  static let button6Caption = "Other"
  static let button6Comment = ""
  static let button6Text = "Other"
  
  static let button7Address = "https://www.hamqsl.com/solargraph.php"
  static let button7Caption = "other"
  static let button7Comment = ""
  static let button7Text = "Other"
 }

// http://www.lu9da.org/prop_graph/imagen1.8.jpg
// http://www.hamqsl.com/solar101vhf.php
// http://www.hamqsl.com/solar101sc.php
// http://www.hamqsl.com/solarsystem.php
// http://www.hamqsl.com/solargraph.php

// http://services.swpc.noaa.gov/images/animations/enlil/latest.jpg
