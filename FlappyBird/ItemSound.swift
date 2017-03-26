//
//  ItemSound.swift
//  FlappyBird
//
//  Created by MAC USER on 2017/03/26.
//  Copyright © 2017年 tetsu.yamaguchi. All rights reserved.
//

import UIKit
import AudioToolbox

class ItemSound: UIViewController {
    func itemsound(sender : AnyObject) {
        // shutter
        var soundIdRing:SystemSoundID = 1108
        // bell
        //var soundIdRing:SystemSoundID = 1000
        // update
        //var soundIdRing:SystemSoundID = 1336
        
        if let soundUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil){
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
