//
//  ContactsViewController.swift
//  VM
//
//  Created by Keith on 09/02/2022.
//

import UIKit

class ContactsViewController: UIViewController {
    
    let presenter: ContactsPresenter
    
    init(presenter: ContactsPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
