//
//  ViewController.swift
//  HelloWorld
//
//  Created by 石济 on 12/16/15.
//  Copyright © 2015 石济. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Button1 : UIButton = UIButton(frame: CGRectMake(0, 0, 200, 40))
    var Label1 : UILabel = UILabel(frame: CGRectMake(0, 0, 200, 40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Button1.setTitle("Press to continue", forState: UIControlState.Normal)
        Button1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        Button1.backgroundColor = UIColor.redColor()
        Button1.addTarget(self, action: "action1", forControlEvents: UIControlEvents.TouchUpInside)
        Button1.setTitleColor(UIColor.grayColor(),forState:UIControlState.Highlighted)
        Button1.setTitle("I'm pressed", forState:UIControlState.Highlighted)
        Button1.center = CGPointMake(160, 400)
        view.addSubview(Button1)
        
        Label1.text = "Please press the buttom"
        Label1.textColor = UIColor.blackColor()
        Label1.textAlignment = NSTextAlignment.Center
        Label1.center = CGPointMake(160, 200)
        view.addSubview(Label1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var i = 0
    var lst1 = ["Hello World!", "What a Nice day today!", "What are you doing?", "Oh, you are pressing me!", "Don't Waste your time!", "Do something good!", "Are you still pressing me?", "Come on, go to study.", "You don't want to study?", "Ok, tell you a story."]
    
    var lst2 = ["Once upon a time,", "there was a guy", "He kept pressing.", "What was he doing?", "It's JerryShi's App!", "Why is it so attractive?", "Cause it is recursive!", "You wanna see how?", "Please don't give up!", "OK, tell you a story."]
    func action1(){
        if i < 10{
            Label1.text = lst1[i]
            i++
        }
        else if i < 99{
            Label1.text = lst2[i%10]
            i++
        }
        else if i == 99{
            Label1.text = "What a insanely patient guy!"
            i++
        }
        else if i == 100{
            Label1.text = "You win this time!"
            Label1.textColor = UIColor.redColor()
            i++
        }
        else if i == 101{
            Label1.text = "GoodBye World!"
            Label1.textColor = UIColor.blackColor()
            i = 0
        }
    }
}

