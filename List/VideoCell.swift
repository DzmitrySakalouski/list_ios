//
//  VideoCell.swift
//  List
//
//  Created by Dzmitry  Sakalouski  on 1/16/20.
//  Copyright © 2020 Dzmitry  Sakalouski . All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}
