//
//  PersonDataObject.swift
//  SearcherApp
//
//  Created by Alish Alseiit on 29.07.2022.
//

import SwiftUI

struct PersonDataObject: Identifiable {
    var id = UUID()
    var name: String
    var phone: String
    var email: String
}

extension PersonDataObject {
    static func mock() -> PersonDataObject {
        PersonDataObject(name: "Joe Mock Data", phone: "(617) 555-8798", email: "joe@mocdata.com")
    }
}

