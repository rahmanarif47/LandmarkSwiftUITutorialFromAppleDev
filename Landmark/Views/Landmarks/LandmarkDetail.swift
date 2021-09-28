//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Arif Rahman Sidik on 28/09/21.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData : ModelData
    var landmark: Landmark
    
    //Index data by id
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -120)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading){
                HStack{
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Tentang \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
                
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[1])
            .environmentObject(modelData)
    }
}
