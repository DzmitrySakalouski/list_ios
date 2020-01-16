//
//  Video.swift
//  List
//
//  Created by Dzmitry  Sakalouski  on 1/16/20.
//  Copyright © 2020 Dzmitry  Sakalouski . All rights reserved.
//
import UIKit
import Foundation

class Video {
    var image: UIImage?
    var title: String
    
    init(image: UIImage?, title: String) {
        self.image = image
        self.title = title
    }
}
