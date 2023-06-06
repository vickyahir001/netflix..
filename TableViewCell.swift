//
//  TableViewCell.swift
//  netflix..
//
//  Created by R90 on 06/06/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = errsecinvalidkeyfor(<#T##sender: Any?##Any?#>)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

          
    }

}
