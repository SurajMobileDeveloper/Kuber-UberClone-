//
//  LocationSearchActivationView.swift
//  Kuber
//
//  Created by Suraj Kumar on 20/04/23.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 8.0, height: 8.0)
                .padding(.horizontal)
            
            Text("where to?")
                .foregroundColor(Color(.darkGray))
            Spacer()
        }.frame(width: UIScreen.main.bounds.width - 64,height: 50.0)
            .background(
              Rectangle()
                .fill(Color.white)
                .shadow(color: .black, radius: 6)
            )
        
    }
}

struct LocationSearchActivationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchActivationView()
    }
}
