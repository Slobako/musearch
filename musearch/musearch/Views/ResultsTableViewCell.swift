//
//  ResultsTableViewCell.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import UIKit
import SDWebImage

class ResultsTableViewCell: UITableViewCell {

    // MARK: - IBOutlets:
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var albumArtImageView: UIImageView!
    
    // MARK: - Properties
    var searchResult: SearchResult? {
        
        // Set artist name, song, album and album civer image in the cell
        didSet {
            if let artist = searchResult?.artist {
                artistLabel.text = artist
            }
            if let song = searchResult?.song {
                songLabel.text = song
            }
            if let album = searchResult?.album {
                albumLabel.text = album
            }
            if let albumArtURLString = searchResult?.albumArtURL {
                if let albumArtURL = URL(string: albumArtURLString) {
                    albumArtImageView.sd_setImage(with: albumArtURL, placeholderImage: #imageLiteral(resourceName: "album_art_placeholder"))
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
