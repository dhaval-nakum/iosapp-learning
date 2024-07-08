//
//  SecondViewController.swift
//  ioswidgetsdemo
//
//  Created by Dhaval Nakum on 08/07/24.
//

import UIKit
import AVKit
import AVFoundation

class SecondViewController: UIViewController {
    
    var isPlaying:Bool = false
    var  player:AVPlayer?
    let playIcon:String = "play.circle.fill"
    let pauseIcon:String = "pause.circle.fill"
    
    @IBOutlet weak var playPauseButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        let videoURL = URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/720/Big_Buck_Bunny_720_10s_5MB.mp4")
        player  = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        
    }
    
    
    @IBAction func onPlayPauseClick(_ sender: Any) {
        if(isPlaying){
            player?.play()
            isPlaying = false 
            playPauseButton.setImage(UIImage(contentsOfFile: playIcon), for: .normal)
        }else{
            player?.pause()
            isPlaying = true
            playPauseButton.setImage(UIImage(contentsOfFile: pauseIcon), for: .normal)
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
