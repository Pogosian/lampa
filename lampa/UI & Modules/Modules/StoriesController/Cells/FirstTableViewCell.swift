//
//  FirstTableViewCell.swift
//  lampa
//
//  Created by Oleg Pogosian on 24.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var sliderCollectionView: UICollectionView! {
           didSet {
               self.sliderCollectionView.register(UINib(nibName: "TopRatedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TopRatedCollectionViewCell")
           }
       }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var topStack: UIView! {
        didSet {
            self.topStack.layer.cornerRadius = 20
            self.topStack.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        }
    }
    @IBOutlet weak var topIMG: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
