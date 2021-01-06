//
//  ButtonView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 12/7/20.
//

import SwiftUI

/// Model of an endpoint.
struct EnpointIdentifier : Identifiable {
  var id: Int
  
  var buttonAddress: String
  var buttonCaption: String
  var buttonComment: String
  var buttonText: String
}

/// Array of endpoints for dynamic buttons.
let endpointData = [
  EnpointIdentifier(id: 1, buttonAddress: "https://services.swpc.noaa.gov/images/swx-overview-small.gif", buttonCaption: "Space Weather", buttonComment: "", buttonText: "Space Weather"),
  
  EnpointIdentifier(id: 2, buttonAddress: "https://services.swpc.noaa.gov/images/station-k-index.png", buttonCaption: "Station K-Index", buttonComment: "", buttonText: "Station K-Index"),
  
  EnpointIdentifier(id: 3, buttonAddress: "https://services.swpc.noaa.gov/images/station-a-index.png", buttonCaption: "Station A Index", buttonComment: "", buttonText: "Station A Index"),
  
  EnpointIdentifier(id: 4, buttonAddress: "https://services.swpc.noaa.gov/images/animations/enlil/latest.jpg", buttonCaption: "(CME) Solar Wind Prediction Model", buttonComment: "", buttonText: "CME Prediction"),
  
  EnpointIdentifier(id: 5, buttonAddress: "https://www.sws.bom.gov.au/Images/HF%20Systems/Global%20HF/Ionospheric%20Map/WorldIMap.gif", buttonCaption: "Ionospheric World Map", buttonComment: "", buttonText: "Ionospheric Map"),
  
  EnpointIdentifier(id: 6, buttonAddress: "https://sohowww.nascom.nasa.gov/data/synoptic/sunspots_earth/mdi_sunspots.jpg", buttonCaption: "Sun Spots", buttonComment: "", buttonText: "Sun Spots"),
  
  EnpointIdentifier(id: 7, buttonAddress: "https://sohowww.nascom.nasa.gov/data/LATEST/current_eit_195.gif", buttonCaption: "Current EIT", buttonComment: "", buttonText: "Current EIT"),
  
  EnpointIdentifier(id: 8, buttonAddress: "https://services.swpc.noaa.gov/images/planetary-k-index.gif", buttonCaption: "Planetary K Index", buttonComment: "", buttonText: "Planetary K Index"),
  
  EnpointIdentifier(id: 9, buttonAddress: "https://sohowww.nascom.nasa.gov/data/realtime/hmi_igr/512/latest.jpg", buttonCaption: "SDO/HMI Continuum Image", buttonComment: "", buttonText: "SDO/HMI Continuum"),
  
  EnpointIdentifier(id: 10, buttonAddress: "https://sohowww.nascom.nasa.gov/data/realtime/hmi_mag/512/latest.jpg", buttonCaption: "SDO HMI Magnetogram Image", buttonComment: "", buttonText: "SDO HMI Magnetogram"),
]

// http://www.lu9da.org/prop_graph/imagen1.8.jpg
// http://www.hamqsl.com/solar101vhf.php
// http://www.hamqsl.com/solar101sc.php
// http://www.hamqsl.com/solarsystem.php
// http://www.hamqsl.com/solargraph.php

// http://services.swpc.noaa.gov/images/animations/enlil/latest.jpg
// https://services.swpc.noaa.gov/images/planetary-k-index.gif
