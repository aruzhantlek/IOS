//
//  File for MyColView.swift
//  ApplicationCollectionView
//
//  Created by Aruzhan Tlek on 06.03.2023.
//

import Foundation
import UIKit

struct ColorsAndTextForMy {
    static func Model() -> [ColorsAndTexts]{
        [
            .init(backgroundcolor: .systemCyan, labelName: "First"),
            .init(backgroundcolor: .systemBlue, labelName: "Second"),
            .init(backgroundcolor: .systemMint, labelName: "Third"),
            .init(backgroundcolor: .systemPink, labelName: "Fourth")
        ]
        
        
    }
}
struct ColorsAndTexts {
    let backgroundcolor: UIColor
    let labelName: String
}
