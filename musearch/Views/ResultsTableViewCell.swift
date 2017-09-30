//
//  ResultsTableViewCell.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {

    // MARK: - IBOutlets:
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var albumArtImageView: UIImageView!
    
    // MARK: - Properties
    var searchResult: SearchResult? {
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
