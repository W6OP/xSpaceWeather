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
          self.networkService.retrieveImage(imageURL: Endpoint.button8Address, imageCaption: Endpoint.button8Caption, imageNote: Endpoint.button8Comment)
        }) {
            Text(Endpoint.button8Text)//.padding(.horizontal, 10)
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
          self.networkService.retrieveImage(imageURL: Endpoint.button9Address, imageCaption: Endpoint.button9Caption, imageNote: Endpoint.button9Comment)
        }) {
          Text(Endpoint.button9Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        Button(action: {
          self.networkService.retrieveImage(imageURL: Endpoint.button10Address, imageCaption: Endpoint.button10Caption, imageNote: Endpoint.button10Comment)
        }) {
          Text(Endpoint.button10Text)
            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
        }
        .selectButton()
        
        
//        Button(action: {
//          self.networkService.retrieveImage(imageURL: Endpoint.button7Address, imageCaption: Endpoint.button7Caption, imageNote: Endpoint.button7Comment)
//        }) {
//          Text(Endpoint.button7Text)
//            .frame(minWidth: buttonWidth, maxWidth: buttonWidth)
//        }
//        .selectButton()

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
  
  static let button2Address = "https://services.swpc.noaa.gov/images/station-k-index.png"
  static let button2Caption = "Station K-Index"
  static let button2Comment = ""
  static let button2Text = "Station K Index"
  
  static let button3Address = "https://services.swpc.noaa.gov/images/station-a-index.png"
  static let button3Caption = "Station A Index"
  static let button3Comment = ""
  static let button3Text = "Station A Index"
  
  static let button4Address = "https://services.swpc.noaa.gov/images/animations/enlil/latest.jpg"
  static let button4Caption = "(CME) Solar Wind Prediction Model"
  // TODO: REWORD THIS!!!
  static let button4Comment = "This is good for viewing CME events, and the corresponding solar wind speed and density for use in predicting both Auroral events and HF blackout conditions."
  static let button4Text = "CME Prediction"
  
  static let button5Address = "https://www.sws.bom.gov.au/Images/HF%20Systems/Global%20HF/Ionospheric%20Map/WorldIMap.gif"
  static let button5Caption = "Ionospheric World Map"
  static let button5Comment = ""
  static let button5Text = "Ionospheric Map"
  
  static let button6Address = "https://sohowww.nascom.nasa.gov/data/synoptic/sunspots_earth/mdi_sunspots.jpg"
  static let button6Caption = "Sun Spots"
  static let button6Comment = ""
  static let button6Text = "Sun Spots"
  
  static let button7Address = "https://sohowww.nascom.nasa.gov/data/LATEST/current_eit_195.gif"
  static let button7Caption = "other"
  static let button7Comment = ""
  static let button7Text = "Other"
  
  static let button8Address = "https://services.swpc.noaa.gov/images/planetary-k-index.gif"
  static let button8Caption = "Planetary K Index"
  static let button8Comment = ""
  static let button8Text = "Planetry K Index"
  
  static let button9Address = "https://sohowww.nascom.nasa.gov/data/realtime/hmi_igr/512/latest.jpg"
  static let button9Caption = "SDO/HMI Continuum Image"
  static let button9Comment = ""
  static let button9Text = "SDO/HMI Continuum"
  
  static let button10Address = "https://sohowww.nascom.nasa.gov/data/realtime/hmi_mag/512/latest.jpg"
  static let button10Caption = "SDO HMI Magnetogram Image"
  static let button10Comment = ""
  static let button10Text = "SDO/HMI Magnetogram"
 }

// http://www.lu9da.org/prop_graph/imagen1.8.jpg
// http://www.hamqsl.com/solar101vhf.php
// http://www.hamqsl.com/solar101sc.php
// http://www.hamqsl.com/solarsystem.php
// http://www.hamqsl.com/solargraph.php

// http://services.swpc.noaa.gov/images/animations/enlil/latest.jpg
// https://services.swpc.noaa.gov/images/planetary-k-index.gif
