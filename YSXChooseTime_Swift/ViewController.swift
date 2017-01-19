//
//  ViewController.swift
//  YSXChooseTime_Swift
//
//  Created by yaosixu on 2017/1/17.
//  Copyright © 2017年 Jason_Yao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dateView = DateScrollView(frame: CGRect(x: 0, y: 100, width: self.view.bounds.size.width, height: 60))
        self.view.addSubview(dateView)
        dateView.chooseDelegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : DateScrollViewChooseDateItemDalegate {
    
    func getNormlDate(_ date: Date) {
        print("date = \(date)")
    }
    
    func getLocationGMTDate(_ date: Date) {
        print("date = \(date)")
    }
    
    func getDateInto(_ dateInfo: (Int, Int, Int, Int)) {
        print("dateInfo = \(dateInfo)")
    }
    
}

