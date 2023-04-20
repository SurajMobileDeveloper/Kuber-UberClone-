//
//  MapVIewActionButton.swift
//  Kuber
//
//  Created by Suraj Kumar on 20/04/23.
//

import SwiftUI

struct MapVIewActionButton: View {
    @Binding var isSearcViewToggle : Bool
    var body: some View {
        Button {
            withAnimation(.spring()) {
                isSearcViewToggle.toggle()
            }
        } label: {
            Image(systemName: isSearcViewToggle ? "arrow.left": "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black,radius: 6.0)
        } .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MapVIewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapVIewActionButton(isSearcViewToggle: .constant(true))
    }
}
