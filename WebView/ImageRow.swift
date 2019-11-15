//
//  ImageRow.swift
//  WebView
//
//  Created by Victor Smirnov on 15.11.2019.
//  Copyright © 2019 Victor Smirnov. All rights reserved.
//

import SwiftUI
import Combine

struct ImageRow: View {
  
  var body: some View {
    var images: [[Int]] = []
    
    _ = (1...18).publisher
      .collect(2)
      .collect()
      .sink(receiveValue: { images = $0 })
    
    return ForEach(0..<images.count, id: \.self) { array in
      HStack {
        ForEach(images[array], id: \.self) { number in
          
          Image("noaa\(number)")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
        }
      }
    }
  }
}

struct ImageRow_Previews: PreviewProvider {
  static var previews: some View {
    ImageRow().preferredColorScheme(.dark)
  }
}
