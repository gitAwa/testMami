//
//  ViewController.swift
//  testMami
//
//  Created by aiueo on 2018/09/03.
//  Copyright © 2018年 aiueo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 音源ファイル指定
    let thiroPath = Bundle.main.bundleURL.appendingPathComponent("thiro.mp3")
    var thiroPlayer = AVAudioPlayer()
    
    // 音源ファイル指定
    let sinuPath = Bundle.main.bundleURL.appendingPathComponent("sinu.mp3")
    var sinuPlayer = AVAudioPlayer()
    
    // 音源ファイル指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("bgm.mp3")
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func buttonMami(_ sender: Any) {
        soundPlayer(player:&thiroPlayer,path:thiroPath,count:0)
    }
    @IBAction func buttonAngel(_ sender: Any) {
        soundPlayer(player:&sinuPlayer,path:sinuPath,count:0)
    }
    
    @IBAction func buttonStop(_ sender: Any) {
        backmusicPlayer.stop()
    }
    
    @IBAction func buttonPlay(_ sender: Any) {
        soundPlayer(player:&backmusicPlayer,path:backmusicPath,count:-1)
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer,path:URL,count:Int){
        do {
            player = try AVAudioPlayer(contentsOf:path,fileTypeHint:nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("error")
        }
        
    }
}



