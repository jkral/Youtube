//
//  TrendingCell.swift
//  Youtube
//
//  Created by Jeff Kral on 1/31/17.
//  Copyright © 2017 Jeff Kral. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            
            self.videos = videos
            self.collectionView.reloadData()
        }
       
    }

}
