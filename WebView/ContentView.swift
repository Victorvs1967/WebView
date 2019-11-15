//
//  ContentView.swift
//  WebView
//
//  Created by Victor Smirnov on 14.11.2019.
//  Copyright © 2019 Victor Smirnov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
        List {
          ImageRow()
        }.navigationBarTitle(Text("Landscape"))
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView().preferredColorScheme(.dark)
    }
}
