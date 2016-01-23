//
//  Transport.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/23.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import Foundation


protocol TransportDelegate {
    
    func play()
    func pause()
    func stop()
    
    func scrubbingDidStart()
    func scrubbedToTime(time:NSTimeInterval)
    func scrubbingDidEnd()
    
    func jumpedToTime(time:NSTimeInterval)
    
    func subtitleSelected(subtitle:String)
    
    
}


protocol DKTransport {
    
    var delegate:TransportDelegate {get}

    func setTitle(title:String)
    
    //定义多个接口
    
    
}