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
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton:UIButton!
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton:UIButton!
    
    // ドラムファイル読み込み、プレイヤーの定義
    let drumSoundPlayer = try!  AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
    // ピアノファイル読み込み、プレイヤーの定義
    let pianoSoundPlayer = try!  AVAudioPlayer(data:NSDataAsset(name:"pianoSound")!.data)
    // ギターファイル読み込み、プレイヤーの定義
    let guitarSoundPlayer = try!  AVAudioPlayer(data:NSDataAsset(name:"guitarSound")!.data)
    
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
    
    //ピアノのタッチが始まったあと
    @IBAction func touchDownPianoButton(){
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        //音を最初戻す
        pianoSoundPlayer.currentTime = 0
        //再生する
        pianoSoundPlayer.play()
    }
    //ピアノのタッチ終了
    @IBAction func touchUpPianoButton(){
        //ピアノが鳴っていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    //ギターのタッチが始まったあと
    @IBAction func touchDownGuitarButton(){
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        //音を最初戻す
        guitarSoundPlayer.currentTime = 0
        //再生する
        guitarSoundPlayer.play()
    }
    //ギターのタッチ終了
    @IBAction func touchUpGuitarButton(){
        //ギターが鳴っていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitaeImage"), for: .normal)
        
    }
    

}

