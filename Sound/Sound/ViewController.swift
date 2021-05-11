//
//  ViewController.swift
//  Sound
//
//  Created by Yu Kono on 2021/05/11.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton:UIButton!
    
    // ファイル読み込み、プレイヤーの定義
    let drumSoundPlayer = try!  AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムのタッチが始まったあと
    @IBAction func touchDownDrumButton(){
        
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //音を最初戻す
        drumSoundPlayer.currentTime = 0
        //再生する
        drumSoundPlayer.play()
        
    }
    
    //ドラムのタッチ終了
    @IBAction func touchUpDrumButton(){
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }

}

