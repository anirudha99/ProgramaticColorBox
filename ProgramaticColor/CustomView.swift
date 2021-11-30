//
//  CustomView.swift
//  ProgramaticColor
//
//  Created by Anirudha SM on 12/11/21.
//

import Foundation
import UIKit

class CustomView: UIView {
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = randomColor()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func randomColor() -> UIColor{
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
    
}
