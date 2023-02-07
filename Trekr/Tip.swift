//
//  Tip.swift
//  Trekr
//
//  Created by Adi Amoyal on 07/02/2023.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
