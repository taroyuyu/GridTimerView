//
//  SectionCollectionViewCell.swift
//  GridTimerView
//
//  Created by Alberto Aznar on 3/9/18.
//  Copyright © 2018 Alberto Aznar. All rights reserved.
//

import UIKit
import GridTimerView

class ChannelCollectionViewCell: GridViewCell {

    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var cellContentView: UIView!
    
    var source: ChannelCollectionViewCellItem? {
        didSet {
            fill(source: source)
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                cellContentView.backgroundColor = Colors.White
            } else {
                cellContentView.backgroundColor = .white
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        channelImageView.layer.cornerRadius = 5
    }
    
    // ---------------------------------------------------------
    // Private
    // ---------------------------------------------------------

    private func fill(source: ChannelCollectionViewCellItem?) {
        channelImageView.image = source?.image
        titleLabel.text = source?.title
        subtitleLabel.text = source?.subtitle
    }
}