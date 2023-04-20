//
//  LocationSearchViewModel.swift
//  Kuber
//
//  Created by Suraj Kumar on 20/04/23.
//

import Foundation
import MapKit


class LocationSearchViewModel: NSObject, ObservableObject {
    @Published var results = [MKLocalSearchCompletion]()
    private let searchCompleter = MKLocalSearchCompleter()
    var queryParameter = "" {
        didSet {
            searchCompleter.queryFragment = queryParameter
        }
    }
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryParameter
    }
}

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
