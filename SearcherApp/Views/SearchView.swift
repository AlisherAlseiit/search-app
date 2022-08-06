//
//  SearchView.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var oo = SearchViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Text("Find a developer")
                    .font(.title.weight(.bold))
                Text("Start searching for a developer to make your app.")
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity) 
            .foregroundColor(.gray)
            .navigationTitle("Search")
        }
        .searchable(text: $oo.searchTerm) {
            ForEach(oo.searchResults) { person in
                PersonRowView(person: person)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
