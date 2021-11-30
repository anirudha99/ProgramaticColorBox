//
//  CustomHorizontalStack.swift
//  ProgramaticColor
//
//  Created by Anirudha SM on 12/11/21.
//

import Foundation
import UIKit

class CustomHorizontalStack: UIStackView {
    
    init(view1: UIView, view2: UIView, view3: UIView, view4: UIView){
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        spacing = 10
        axis = .horizontal
        distribution = .fillEqually
        addArrangedSubview(view1)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
