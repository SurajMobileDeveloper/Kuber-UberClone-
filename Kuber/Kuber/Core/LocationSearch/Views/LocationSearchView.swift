//
//  LocationSearchView.swift
//  Kuber
//
//  Created by Suraj Kumar on 20/04/23.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var currelocationTxt = String()
    @State private var destinationTxt = String()
    @Binding var showLocationSearchView: Bool
    @StateObject var vm = LocationSearchViewModel()
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                VStack {
                    TextField("Current Location", text: $currelocationTxt)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                        
                    TextField("Destination", text: $vm.queryParameter)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                        
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            Divider()
                .padding(.vertical)
            //list view
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(vm.results, id: \.self) { result in
                        LocationSearchViewCell(title: result.title, subTitle: result.subtitle)
                            .onTapGesture {
                                DispatchQueue.main.async {
                                    withAnimation(.spring()) {
                                        showLocationSearchView.toggle()
                                    }
                                }
                        }
                    }
                }
            }
        }.background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView(showLocationSearchView: .constant(true))
    }
}
