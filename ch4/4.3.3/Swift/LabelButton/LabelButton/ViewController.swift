//
//  ViewController.swift
//  LabelButton
//
//  Created by 关东升 on 15/12/10.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screen = UIScreen.mainScreen().bounds
        
        let labelWidth:CGFloat = 90
        let labelHeight:CGFloat = 20
        let labelTopView:CGFloat = 150
        self.label = UILabel(frame: CGRectMake((screen.size.width - labelWidth)/2 , labelTopView, labelWidth, labelHeight))
        
        self.label.text = "Label"
        //字体左右居中
        self.label.textAlignment = .Center
        self.view.addSubview(self.label)
        
        let button = UIButton(type: UIButtonType.System)
        button.setTitle("OK", forState: UIControlState.Normal)
        
        let buttonWidth:CGFloat = 60
        let buttonHeight:CGFloat = 20
        let buttonTopView:CGFloat = 240
        
        button.frame = CGRectMake((screen.size.width - buttonWidth)/2 , buttonTopView, buttonWidth, buttonHeight)
        
        button.addTarget(self, action: Selector("onClick:"), forControlEvents: UIControlEvents.TouchUpInside)

        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func onClick(sender: AnyObject) {
        self.label.text = "HelloWorld"
    }

}

