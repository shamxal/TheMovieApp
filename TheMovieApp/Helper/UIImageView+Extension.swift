//
//  UIImageView+Extension.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 30.01.26.
//

import UIKit
import Kingfisher

extension UIImageView {
    func loadURL(data: String) {
        let url = URL(string: CoreHelper.shared.configureImageURL(path: data))
        kf.setImage(with: url)
    }
}
