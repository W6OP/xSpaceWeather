//
//  ImageView.swift
//  xSpaceWeather
//
//  Created by Peter Bourget on 12/10/20.
//

import SwiftUI


struct ImageView: View {
  @EnvironmentObject var networkService: NetworkService
  
    var body: some View {
      VStack {
        // could add Text for a caption - published property in NetworkService
        Text(networkService.caption)
          .font(.largeTitle)
        
        Divider()
        
        Text(networkService.note)
          .font(.body)
          
        Image(nsImage: networkService.image)
          .resizable()
          .scaledToFit()
          .frame(width: 600.0, height: 600.0, alignment: .center)
          //.aspectRatio(contentMode: .fit)
        //  .clipShape(Circle())
      }
      .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
      //.border(Color.purple)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
      ImageView().environmentObject(NetworkService())
    }
}


// https://www.swpc.noaa.gov/products/wsa-enlil-solar-wind-prediction
// solar wind data to be animated
// https://services.swpc.noaa.gov/products/animations/enlil.json">
