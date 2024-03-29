//
//  RipeningModel.swift
//  Avocados
//
//  Created by Rafael Carvalho on 28/03/23.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
