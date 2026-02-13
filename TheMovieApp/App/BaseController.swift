//
//  BaseController.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 30.01.26.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureViewModel()
        configureConstraints()
    }
    
    func configureUI() {}
    
    func configureViewModel() {}
    
    func configureConstraints() {}
}
