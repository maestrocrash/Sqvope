//
//  ScreenSquare.swift
//  Square
//
//  Created by MICHAIL SHAKHVOROSTOV on 14.02.2023.
//  Copyright © 2023  ShMichail. All rights reserved.
//

import UIKit


class ScreenSquare: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = UILabel()
        text.text = "Title"
        text.font = UIFont.boldSystemFont(ofSize: 25)
        
        view.backgroundColor = .orange
        navigationController?.navigationBar.topItem?.titleView = text
        setupView()
        setupConstraint()
    }
    
    let imageFigure: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up.circle")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let textFieldParametrlFigure: UITextField = {
       
        let text = UITextField()
        text.font = UIFont.boldSystemFont(ofSize: 25)
        text.placeholder = "Enter text here"
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
        
    }()
    
    let buttonCalc: UIButton = {
       
        let button = UIButton()
        
        button.setTitle("Расчет", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor = .green
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    
    
}

extension ScreenSquare {
    
    private func setupView() {
        
        view.addSubview(imageFigure)
        view.addSubview(textFieldParametrlFigure)
        view.addSubview(buttonCalc)
    }
    
    private func setupConstraint(){
        
        NSLayoutConstraint.activate([
            imageFigure.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageFigure.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            imageFigure.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            imageFigure.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageFigure.widthAnchor.constraint(equalTo: imageFigure.heightAnchor, multiplier: 0.7/0.7)
        
        ])
        
        NSLayoutConstraint.activate([
            textFieldParametrlFigure.topAnchor.constraint(equalTo: imageFigure.bottomAnchor, constant: -10),
            textFieldParametrlFigure.centerXAnchor.constraint(equalTo: imageFigure.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonCalc.centerXAnchor.constraint(equalTo: imageFigure.centerXAnchor),
            buttonCalc.leadingAnchor.constraint(equalTo: imageFigure.leadingAnchor),
           
            buttonCalc.trailingAnchor.constraint(equalTo: imageFigure.trailingAnchor),
            buttonCalc.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)


        ])
        
    }
    
}
