//
//  ViewController.swift
//  ExAction
//
//  Created by 김종권 on 2023/01/04.
//

import UIKit

class ViewController: UIViewController {
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let abc = 123
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("타이틀", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
//        button.addTarget(self, action: #selector(tab), for: .touchUpInside)
        
        button.addAction {
            print("Tab Button!", abc)
        }
    }
    
    @objc private func tab() {
        print("Tab Button!")
    }
}
