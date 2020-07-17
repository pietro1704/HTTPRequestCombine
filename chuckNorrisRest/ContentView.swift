//
//  ContentView.swift
//  chuckNorrisRest
//
//  Created by Pietro Pugliesi on 17/07/20.
//  Copyright © 2020 Pietro Pugliesi. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    var text:String?
    
    private var api=API()
    private var cancellable:AnyCancellable?
    
    var body: some View {
        Button("get") {
            self.api.getURL(urlString: "https://api.icndb.com/jokes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
