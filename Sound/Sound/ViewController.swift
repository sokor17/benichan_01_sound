//
//  ViewController.swift
//  Sound
//
//  Created by Yu Kono on 2021/05/11.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    // ファイル読み込み、プレイヤーの定義
    let drumSoundPlayer = try!  AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムタップ時
    @IBAction func tapDrumButton(){
        
        //音を最初に戻す
        drumSoundPlayer.currentTime = 0
        
        //再生する
        drumSoundPlayer.play()
        
    }

}

