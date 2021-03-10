//
//  UIView.swift
//  DaysPicker
//
//  Created by Ashvin Ajadiya on 10/03/21.
//

import Foundation
import UIKit

extension UIView {
    
    func animShow(duration: TimeInterval) {
        self.frame.origin.y -= self.frame.origin.y
        UIView.animate(withDuration: duration, delay: 0, options: [.curveEaseIn],
                       animations: {
                        self.center.y -= self.bounds.height
                        self.layoutIfNeeded()
                       }, completion: nil)
        self.isHidden = false
    }
    
    func animHide(duration: TimeInterval) {
        UIView.animate(withDuration: duration, delay: 0, options: [.curveLinear],
                       animations: {
                        self.center.y += self.bounds.height
                        self.layoutIfNeeded()
                        
                       },  completion: {(_ completed: Bool) -> Void in
                        self.isHidden = true
                       })
    }
}
