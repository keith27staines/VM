//
//  Coordinating.swift
//  VM
//
//  Created by Keith on 09/02/2022.
//

import Foundation

import UIKit

protocol Coordinating : AnyObject {
    var uuid: UUID { get }
    var rootViewController: UIViewController { get }
    var childCoordinators: [UUID: Coordinating] { get set }
    func addChildCoordinator(_ coordinator: Coordinating)
    func removeChildCoordinator(_ coordinator: Coordinating)
    
    func start()
    func finish()

    init(rootViewController: UIViewController)
}

extension Coordinating {
    func addChildCoordinator(_ coordinator: Coordinating) {
        childCoordinators[coordinator.uuid] = coordinator
    }
    func removeChildCoordinator(_ coordinator: Coordinating) {
        childCoordinators[coordinator.uuid] = nil
    }
}

class BaseCoordinator : Coordinating {
    
    var childCoordinators = [UUID : Coordinating]()
    
    required init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    let rootViewController: UIViewController
    let uuid: UUID = UUID()
    
    func start() {
        
    }
    
    func finish() {
        
    }
}
