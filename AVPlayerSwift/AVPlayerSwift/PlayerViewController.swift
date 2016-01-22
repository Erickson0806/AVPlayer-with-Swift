//
//  PlayerViewController.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/22.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit



class PlayerViewController: UIViewController {

    var assetURL:NSURL?
    var playManager : PlayerManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.playManager = PlayerManager(url:self.assetURL!)

        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    }


}
