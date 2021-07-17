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
        
        
        
        
        // создаем кнопки нужных размеров
//        self.drawButton = [[KLButton alloc] initWithFrame:CGRectMake(243, 452, 91, 32)];
//        [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
//        self.openPaletteButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 452, 163, 32)];
//        [self.openPaletteButton setTitle:@"Open Palette" forState:UIControlStateNormal];
//        self.openTimerButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 504, 151, 32)];
//        [self.openTimerButton setTitle:@"Open Timer" forState:UIControlStateNormal];
//        self.shareButton = [[KLButton alloc] initWithFrame:CGRectMake(239, 504, 95, 32)];
//        [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    }

}
