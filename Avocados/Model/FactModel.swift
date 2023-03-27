//
//  FactModel.swift
//  Avocados
//
//  Created by Rafael Carvalho on 27/03/23.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
