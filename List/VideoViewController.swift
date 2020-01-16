//
//  VideoListScreen.swift
//  List
//
//  Created by Dzmitry  Sakalouski  on 1/16/20.
//  Copyright © 2020 Dzmitry  Sakalouski . All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    var videos: [Video] = []

    @IBOutlet weak var tablrView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
        tablrView.delegate = self
        tablrView.dataSource = self
    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "about_img_1"), title: "First img")
        let video2 = Video(image: UIImage(named: "about_img_1"), title: "Second img")
        let video3 = Video(image: UIImage(named: "about_img_1"), title: "Third img")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        return tempVideos
    }
    
}

extension VideoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection numberOfRowsInSelection: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}
