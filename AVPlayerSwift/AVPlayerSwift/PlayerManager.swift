//
//  PlayerManager.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/22.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit
import AVFoundation

let kStatusKeyPath = "status"


class PlayerManager: NSObject {

//    private(set) internal var view: UIView
    
    var asset:AVAsset?
    var playerItem:AVPlayerItem?
    var player:AVPlayer?
    
//    let view:UIView?
    
    
    
    init(url:NSURL) {
        super.init()
        
        asset = AVAsset(URL: url)
        
        self.perpareToPlay()
    }
    
    func perpareToPlay(){
        let keys = [
            "tracks",
            "duration",
            "commonMetadata",
            "availableMediaCharacteristicsWithMediaSelectionOptions"
        ]
        self.playerItem = AVPlayerItem(asset: asset!, automaticallyLoadedAssetKeys: keys)
        self.playerItem?.addObserver(self, forKeyPath: kStatusKeyPath, options: .New, context: nil)
        
        self.player = AVPlayer(playerItem: self.playerItem!)
        
        
        
    }
    
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        dispatch_async(dispatch_get_main_queue()) {
            self.playerItem!.removeObserver(self, forKeyPath: kStatusKeyPath)
            
            if self.playerItem?.status == .ReadyToPlay {
                self.addPlayerItemTimeObserver()
                self.addItemEndObserverForPlayerItem()
                
                let duration = self.playerItem!.duration
                
            }
            
        }
    }
    
    func addPlayerItemTimeObserver(){
        
    }
    func addItemEndObserverForPlayerItem(){
        
    }
    
    
}
