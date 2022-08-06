//
//  SearchViewModel.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var searchTerm = ""
    var data: [PersonDataObject] = []
    @Published var searchResults: [PersonDataObject] = []
    
    
    init() {
        data = MocService.shared.getData()
        
        $searchTerm
            .debounce(for: 0.4, scheduler: RunLoop.main)
            .map{ searchTerm in
                 self.data.filter{ person in
                    person.name.lowercased().contains(searchTerm.lowercased())
                }
            }
            .assign(to: &$searchResults )
    }
}
