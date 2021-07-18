//
//  TimeViewController.swift
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 18.07.21.
//

import UIKit

class TimeViewController: UIViewController {
    
    // Объявляем делегат для использования
    @objc var delegate:TimerDelegate?
    var slider: UISlider?
    var currentTimeLabel: UILabel?
    var currentTime: Float = 1.00
    
    @objc
    func onSaveButtonTap() {
        // Вызываем делегат в тот момент, когда кнопка нажата
        delegate?.didTimeSet?(currentTime)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider = UISlider(frame: CGRect(x: 74, y: 100, width: 223, height: 28))
        self.slider?.minimumValue = 1
        self.slider?.maximumValue = 5
        self.view.addSubview(slider!)
        let minTime = UILabel(frame: CGRect(x: 26, y: 103, width: 7, height: 22))
        minTime.text = "1"
        
        let maxTime = UILabel(frame: CGRect(x: 338, y: 103, width: 11, height: 22))
        maxTime.text = "5"
        
        self.currentTimeLabel = UILabel(frame: CGRect(x: 162, y: 161, width: 60, height: 22))
        let value:Float = 1.00
        self.currentTimeLabel?.text = "\(value.format(f: ".2")) s"
        
        minTime.font = UIFont(name: "Montserrat-Regular", size: 18)
        maxTime.font = UIFont(name: "Montserrat-Regular", size: 18)
        self.slider?.value = 1
        self.view.addSubview(minTime)
        self.view.addSubview(maxTime)
        
        self.currentTimeLabel!.font = UIFont (name: "Montserrat-Regular", size: 18)
        self.view.addSubview(self.currentTimeLabel!)
        
        self.slider?.addTarget(self, action: #selector(self.sliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc
    func setUp() {
        print("set up time VC")
        self.view.frame = CGRect(x: 0, y: 333, width: 375, height: 363.5)
        self.view.backgroundColor = .white
        let transition = CATransition()
        
        transition.duration = 1;
        transition.type = CATransitionType.init(rawValue: "kCATransitionPush")
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.view.layer.add(transition, forKey: nil)
        self.view.layer.cornerRadius = 40
        self.view.layer.shadowColor = UIColor.init(named: "Black")?.cgColor
        self.view.layer.shadowRadius = 2.0
        
        self.view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0);
        self.view.layer.masksToBounds = false
        self.view.layer.shadowOpacity = 0.25
    }
    
    @objc
    func hideContentController() {
        print("hide!!")
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
    @objc func sliderValueChanged(_ sender: Any) {
        guard let value = self.slider?.value else {
            return
        }
        self.currentTime = value
        self.currentTimeLabel?.text = "\(value.format(f: ".2")) s"
    }
}

extension Float {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}
