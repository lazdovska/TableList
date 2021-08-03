//
//  DetailMusicViewController.swift
//  TableList
//
//  Created by kristine.lazdovska on 02/08/2021.
//

import UIKit

class DetailMusicViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil{
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " " + song.album
            trackNameLabel.numberOfLines = 0
        }
    }
    

 

}
