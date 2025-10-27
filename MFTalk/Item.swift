//
//  Item.swift
//  MFTalk
//
//  Created by Benno on 27/10/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
