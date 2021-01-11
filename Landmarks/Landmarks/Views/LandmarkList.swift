//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lambda_School_Loaner_204 on 1/8/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { devicename in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: devicename))
//                .previewDisplayName(devicename)
//        }
    }
}
