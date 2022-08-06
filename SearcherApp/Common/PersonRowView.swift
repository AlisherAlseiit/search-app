//
//  PersonRowView.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

struct PersonRowView: View {
    var person: PersonDataObject
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(person.name)
                    .font(.title2.weight(.semibold))
                Group {
                    Text(person.phone)
                    Text(person.email)
                }
                .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: PersonDataObject.mock())
            .previewLayout(.sizeThatFits)
    }
}
