//
//  NewsTableViewCell.swift
//  NewsApp
//
//  Created by Alexander on 20.01.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    static let cellIdentifier = "NewsCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(data: NewsCellModel) {
        
        titleLabel.text = data.title
        authorLabel.text = data.author
    }
}
