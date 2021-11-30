//
//  ColorViewController.swift
//  ProgramaticColor
//
//  Created by Anirudha SM on 12/11/21.
//

import UIKit

class ColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI(){
        view.backgroundColor = .white
        
        let verticalStack = UIStackView()
        for _ in 1...4 {
            let view1 = CustomView()
            let view2 = CustomView()
            let view3 = CustomView()
            let view4 = CustomView()
            
            let stack = UIStackView(arrangedSubviews:[view1,view2,view3,view4])
            stack.spacing = 5
            stack.axis = .horizontal
            stack.distribution = .fillEqually
                    
            verticalStack.addArrangedSubview(stack)
            verticalStack.axis = .vertical
            verticalStack.spacing = 5
            verticalStack.translatesAutoresizingMaskIntoConstraints = false
            verticalStack.distribution = .fillEqually
            view.addSubview(verticalStack)
            
            NSLayoutConstraint.activate([
                verticalStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
                verticalStack.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
                verticalStack.topAnchor.constraint(equalTo: view.topAnchor,constant: 20),
                verticalStack.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -20)
                
            ])
        }
    }
}
