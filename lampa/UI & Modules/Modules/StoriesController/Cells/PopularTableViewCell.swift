//
//  PopularTableViewCell.swift
//  lampa
//
//  Created by Oleg Pogosian on 24.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//

import UIKit

class PopularTableViewCell: UITableViewCell {

    @IBOutlet weak var cellIMG: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var urlButton: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
