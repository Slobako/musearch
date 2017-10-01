//
//  LyricsViewController.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import UIKit

class LyricsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var albumArtImageView: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var lyricsTextView: UITextView!
    
    // MARK: - Properties
    var selectedResult: SearchResult?
    lazy var searchService: SearchService = SearchService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setViewValues()
        searchService.searchLyricsFor(song: songLabel.text!, artist: artistLabel.text!) { (lyrics) in
            guard let lyrics = lyrics else { return }
            if lyrics != "" {
                self.lyricsTextView.text = lyrics
            } else {
                self.lyricsTextView.text = "LYRICS NOT FOUND"
            }
        }
        
    }

    // Sets artist name, song, album and album cover image
    func setViewValues() {
        if let artist = selectedResult?.artist {
            artistLabel.text = artist
        }
        if let song = selectedResult?.song {
            songLabel.text = song
        }
        if let album = selectedResult?.album {
            albumLabel.text = album
        }
        if let albumArtURLString = selectedResult?.albumArtURL {
            if let albumArtURL = URL(string: albumArtURLString) {
                albumArtImageView.sd_setImage(with: albumArtURL, placeholderImage: #imageLiteral(resourceName: "album_art_placeholder"))
            }
        }
    }

}
