//
//  ContentView.swift
//  Kuber
//
//  Created by Suraj Kumar on 19/04/23.
//

import SwiftUI

struct HomeView: View {
@State private var showLocationSearchView = false
    var body: some View {
        ZStack(alignment: .top) {
            KuberMapViewRepresenter().ignoresSafeArea()
            if !showLocationSearchView {
                LocationSearchActivationView().padding(.top ,70)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()
                        }
                    }
            } else {
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            }
            MapVIewActionButton(isSearcViewToggle: $showLocationSearchView)
                .padding(.leading)
                .padding(.top ,4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
