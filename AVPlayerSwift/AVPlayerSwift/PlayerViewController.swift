//
//  PlayerViewController.swift
//  AVPlayerSwift
//
//  Created by Erickson on 16/1/22.
//  Copyright © 2016年 paiyipai. All rights reserved.
//

import UIKit
import AVFoundation

let kTestURL = "http://zyr.pyp.91paiyipai.com/u0136abl9tz.mp4"

class PlayerViewController: UIViewController {
    @IBOutlet weak var videoPlayerView: PlayerView!

    var playerItem: AVPlayerItem?
    var videoPlayer: AVPlayer?
    var videoTimeObserver: AnyObject? = nil
    var playingRateAfterScrub: Float = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: kTestURL)
        
        self.playerItem = AVPlayerItem(URL: url!)
        
        self.videoPlayer = AVPlayer(playerItem: self.playerItem!)
        self.videoPlayerView.setPlayer(self.videoPlayer!)
        self.videoPlayerView.setVideoFillMode(AVLayerVideoGravityResizeAspect)

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "playerItemDidReachEnd:", name: AVPlayerItemDidPlayToEndTimeNotification, object: self.playerItem)
        
//        // 再生時間とシークバー位置の更新
//        self.videoTimeObserver = self.videoPlayer!.addPeriodicTimeObserverForInterval(CMTimeMake(150, 600),
//            queue: dispatch_get_main_queue(),
//            usingBlock: {[unowned self](CMTime) in
////                self.syncSeekber()
////                self.updateTimeLabel()
//            })
//
//        self.seekber.minimumTrackTintColor = UIColor.whiteColor()
//        self.seekber.maximumTrackTintColor = UIColor.blackColor()
//        self.seekber.setValue(0, animated: false)
//        self.syncPlayPauseButtonImage()
//        self.updateTimeLabel()
//        
//        self.singleTap.requireGestureRecognizerToFail(self.doubleTap)

        self.videoPlayer!.play()

        
    }
    // MARK: - Player Notifications
    
    func playerItemDidReachEnd(notification: NSNotification) {
//        self.syncPlayPauseButtonImage()
//        self.seekToTime(0)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    }


}
