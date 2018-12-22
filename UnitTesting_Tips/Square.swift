//
//  Square.swift
//  UnitTesting_Tips
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import Foundation
protocol SaverProtocol {
    func save(value: Float)
}

class Square {
    private let saver: SaverProtocol

    var side: Float = 0
    var area: Float {
        return pow(side, 2)
    }

    init(saver: SaverProtocol) {
        self.saver = saver
    }

    func saveArea() {
        saver.save(value: area)
    }
}
