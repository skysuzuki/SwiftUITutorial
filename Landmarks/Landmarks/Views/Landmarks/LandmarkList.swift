//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lambda_School_Loaner_204 on 1/8/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
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
