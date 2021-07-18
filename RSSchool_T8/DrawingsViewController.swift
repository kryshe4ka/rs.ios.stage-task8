//
//  DrawingsViewController.swift
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

import UIKit

class DrawingsViewController: UIViewController {

    var planetButton: KLButton?
    var headButton: KLButton?
    var treeButton: KLButton?
    var landscapeButton: KLButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.planetButton = KLButton.init(frame: CGRect(x: 88, y: 112, width: 200, height: 40))
        self.planetButton?.setTitle("Planet", for: .normal)
        
        self.headButton = KLButton.init(frame: CGRect(x: 88, y: 167, width: 200, height: 40))
        self.headButton?.setTitle("Head", for: .normal)
        
        self.treeButton = KLButton.init(frame: CGRect(x: 88, y: 222, width: 200, height: 40))
        self.treeButton?.setTitle("Tree", for: .normal)
        
        self.landscapeButton = KLButton.init(frame: CGRect(x: 88, y: 277, width: 200, height: 40))
        self.landscapeButton?.setTitle("Landscape", for: .normal)
        
        let buttons = [planetButton, headButton, treeButton, landscapeButton];
        
        for button in buttons {
            button?.setUp()
            self.view.addSubview(button!)
        }
        
        self.navigationItem.title = "Drawings"
    }
}
