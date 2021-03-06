//
//  Person.swift
//  Star Wars with Luis
//
//  Created by Ilgar Ilyasov on 9/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Person: Codable {
    let name: String
    let gender: String
    let birthYear: String
}

struct PersonSearchResults: Codable {
    var results: [Person]
}
