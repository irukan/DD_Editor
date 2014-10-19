//
//  ViewController.swift
//  DD_Editor
//
//  Created by kayama on 2014/10/19.
//  Copyright (c) 2014年 kayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Wwidth:CGFloat!
    var Wheight:CGFloat!

    var isPush:Bool!
    var button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        Wwidth = self.view.frame.width
        Wheight = self.view.frame.height

        isPush = false

        button = UIButton(frame: CGRectMake(Wwidth/2.0, Wheight/2.0, 50, 50))
        button.center = CGPointMake(Wwidth/2.0, Wheight/2.0)

        button.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        button.addTarget(self, action: "btn_TouchDragInside:event:", forControlEvents:.TouchDragInside)
        button.addTarget(self, action: "btn_TouchUp:", forControlEvents:.TouchUpInside | .TouchUpOutside)
        self.view.addSubview(button)
    }

    func btn_TouchDragInside(button: UIButton, event: UIEvent){

        isPush = true

        let touches = event.touchesForView(button)
        let touch = touches?.anyObject() as UITouch
        var previousLocation : CGPoint = touch.previousLocationInView(button)
        var location : CGPoint = touch.locationInView(button)
        var delta_x :CGFloat = location.x - previousLocation.x
        var delta_y :CGFloat = location.y - previousLocation.y
        button.center = CGPointMake(button.center.x + delta_x, button.center.y + delta_y);

        button.alpha = 0.2
    }
    
    func btn_TouchUp(button: UIButton)
    {
        isPush = false
        
        button.alpha = 1.0
    }


//    // タッチ開始
//    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
//        
//        for touch : AnyObject in touches
//        {
//            let location = touch.locationInView(self.view)
//            button.center = location
//        }
//    }
//
//    // タッチ移動
//    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
//        
//        for touch : AnyObject in touches
//        {
//            let location = touch.locationInView(self.view)
//            button.center = location
//        }
//
//    }
//
//    // タッチ終了
//    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
//
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

