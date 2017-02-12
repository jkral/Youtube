//
//  SubscriptionCell.swift
//  Youtube
//
//  Created by Jeff Kral on 1/31/17.
//  Copyright © 2017 Jeff Kral. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
