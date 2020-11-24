//
//  Array+Only.swift
//  Memorize
//
//  Created by Dias on 11/17/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
