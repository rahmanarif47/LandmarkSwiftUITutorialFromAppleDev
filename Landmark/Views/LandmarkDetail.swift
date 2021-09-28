//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Arif Rahman Sidik on 28/09/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -120)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading){
                Text("Arsa Nusa")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack {
                    Text("Penguasa Dunia Bawah 2030")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Tentang ArsaNusa")
                    .font(.title2)
                Text("Kumpulan orang orang dude not perfect")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
