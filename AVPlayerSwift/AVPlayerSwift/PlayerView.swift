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

    var overlayView:OverlayView?

    
    override class func layerClass() -> AnyClass {
        return AVPlayerLayer.self
    }
    
   
    init(player: AVPlayer) {
        
        super.init(frame: CGRectZero)
        
        (self.layer as! AVPlayerLayer).player = player
        
        NSBundle.mainBundle().loadNibNamed("", owner: self, options: nil)
        self.addSubview(overlayView!)
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.overlayView?.frame = self.bounds
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func transport()->AnyObject{
        return self.overlayView!
    }


}
