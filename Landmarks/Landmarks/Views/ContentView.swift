//
//  ContentView.swift
//  Landmarks
//
//  Created by Lambda_School_Loaner_204 on 1/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
