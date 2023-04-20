//
//  LocationSeatchViewCell.swift
//  Kuber
//
//  Created by Suraj Kumar on 20/04/23.
//

import SwiftUI


struct LocationSearchViewCell: View {
    let title: String
    let subTitle: String
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40.0, height: 40.0)
            VStack(alignment: .leading,spacing: 4.0) {
                Text(title)
                    .font(.body)
                Text(subTitle)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }.padding(.leading)
    }
}


struct LocationSearchViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchViewCell(title: "DUmmy tilte", subTitle: "Dummy Subtitile")
    }
}
