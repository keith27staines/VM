//
//  AppCoordinator.swift
//  VM
//
//  Created by Keith on 09/02/2022.
//

import UIKit

class AppCoordinator : BaseCoordinator {
    
    var window: UIWindow
    var started: Bool = false
    
    init() {
        let navController = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navController
        super.init(rootViewController: navController)
        window.makeKeyAndVisible()
    }
    
    override func start() {
        guard !started else { return }
        started = true
        let appViewController = AppViewController(coordinator: self)
        rootViewController.show(appViewController, sender: self)
        addChildCoordinator(roomsCoordinator)
        addChildCoordinator(contactsCoordinator)
        roomsCoordinator.start()
        contactsCoordinator.start()
    }
    
    lazy var roomsCoordinator: RoomsCoordinator = {
        let coordinator = RoomsCoordinator(rootViewController: rootViewController)
        return coordinator
    }()
    
    lazy var contactsCoordinator: ContactsCoordinator = {
        let coordinator = ContactsCoordinator(rootViewController: rootViewController)
        return coordinator
    }()
    
    required init(rootViewController: UIViewController) {
        fatalError("init(rootViewController:) please use init() on this coordinator because it creates its own root view controller")
    }
}
