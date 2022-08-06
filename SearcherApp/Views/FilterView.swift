//
//  FilterView.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

struct FilterView: View {
    @StateObject var oo = FilterViewModel()
    
    var listData: [PersonDataObject] {
        oo.searchTerm.isEmpty ? oo.data : oo.searchResults
    }
    
    var body: some View {
        NavigationView {
            List(listData) { person in
                PersonRowView(person: person)
            }
            .animation(.default, value: oo.searchTerm)
        }
        .searchable(text: $oo.searchTerm, placement: .navigationBarDrawer(displayMode: .always))
    }
}

struct FilterViews_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
