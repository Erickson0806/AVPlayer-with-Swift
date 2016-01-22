//
//  ViewController.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/22.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit


let kLocalSegue = "localSegue"
let kStreamingSegue = "streamingSegue"

class ViewController: UIViewController {

    var localURL:NSURL?
    var streamingURL:NSURL?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.localURL = NSBundle.mainBundle().URLForResource("", withExtension: "")
        self.streamingURL = NSURL(string: "")

        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let url = segue.identifier == kLocalSegue ? self.localURL : self.streamingURL
        let playerController:PlayerViewController = segue.destinationViewController as! PlayerViewController
        playerController.assetURL = url!
    }

   
    

}

