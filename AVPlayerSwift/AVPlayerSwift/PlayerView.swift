//
//  PlayerView.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/22.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit
import AVFoundation




class PlayerView: UIView {

    override class func layerClass() -> AnyClass {
        return AVPlayerLayer.self
    }
    
    func player() -> AVPlayer {
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        return layer.player!
    }
    
    func setPlayer(player: AVPlayer) {
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        layer.player = player
    }
    
    func setVideoFillMode(fillMode: NSString) {
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        layer.videoGravity = fillMode as String
    }
    
    func videoFillMode() -> NSString {
        let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
        return layer.videoGravity
    }


}
