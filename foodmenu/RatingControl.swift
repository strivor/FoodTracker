//
//  RatingControl.swift
//  foodmenu
//
//  Created by 江小威 on 16/3/30.
//  Copyright © 2016年 xavier. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
   
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: Selector("ratingButtonTapped"), forControlEvents: .TouchDown)
        addSubview(button)
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}

