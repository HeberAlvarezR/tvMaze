//
//  TableViewsCell.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import UIKit

class TableViewsCell: UITableViewCell{
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(animated, animated: animated)
    }
    
}
