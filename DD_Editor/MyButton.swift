//
//  MyButton.swift
//  DD_Editor
//
//  Created by kayama on 2014/10/19.
//  Copyright (c) 2014年 kayama. All rights reserved.
//

import UIKit

class MyButton: UIButton {

    var parentView:UIView!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    
        parentView = self.parentView as UIView
        
        
        .backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        button.addTarget(self, action: "btn_TouchDragInside:event:", forControlEvents:.TouchDragInside)
        button.addTarget(self, action: "btn_TouchUp:", forControlEvents:.TouchUpInside | .TouchUpOutside)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}
