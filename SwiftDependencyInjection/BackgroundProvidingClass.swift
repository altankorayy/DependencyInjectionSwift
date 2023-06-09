//
//  BackgroundProvidingClass.swift
//  SwiftDependencyInjection
//
//  Created by Altan on 5.06.2023.
//

import Foundation
import UIKit

class BackgroundProviding: BackgroundProvider {
    
    var backgroundColor: UIColor {
        let backgroundColors : [UIColor] = [.systemGray,.systemRed,.systemMint,.systemCyan]
        return backgroundColors.randomElement()!
    }
    
    
}
