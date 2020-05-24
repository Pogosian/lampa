//
//  TopRatedCollectionViewCell.swift
//  lampa
//
//  Created by Oleg Pogosian on 24.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//

import UIKit

class TopRatedCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundIMG: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var urlButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
