//
//  FilterViewModel.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

class FilterViewModel: ObservableObject {
    @Published var searchTerm = ""
    @Published var data: [PersonDataObject] = []
    @Published var searchResults: [PersonDataObject] = []
    
    init() {
        data = MocService.shared.getData()
        
        $searchTerm
            .map{ searchTerm in
                self.data.filter{ person in
                    person.name.lowercased().contains(searchTerm.lowercased())
                }
            }
            .assign(to: &$searchResults )
    }
}
