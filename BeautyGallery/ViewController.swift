//
//  ViewController.swift
//  BeautyGallery
//
//  Created by abel on 15/8/29.
//  Copyright (c) 2015年 abel. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["范冰冰","李冰冰","王菲","杨幂","周迅"]
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPicker.selectedRowInComponent(0)
            var imageName:String?
            switch index{
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"
            default:
                imageName = nil
                
            }
            var vc = segue.destinationViewController as! GalleryController
            vc.imageName = imageName
        }
    }
}

