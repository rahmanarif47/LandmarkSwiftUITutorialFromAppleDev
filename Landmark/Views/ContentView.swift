//
//  ContentView.swift
//  Landmark
//
//  Created by Arif Rahman Sidik on 13/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                .previewDisplayName("iPhone 13")
                .environmentObject(ModelData())
        }
    }
}
