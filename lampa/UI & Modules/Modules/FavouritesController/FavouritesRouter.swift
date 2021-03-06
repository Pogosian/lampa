//
//  FavouritesRouter.swift
//  lampa
//
//  Created Oleg Pogosian on 23.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class FavouritesRouter: FavouritesWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule(view: FavouritesViewController) {

        let interactor = FavouritesInteractor()
        let router = FavouritesRouter()
        let presenter = FavouritesPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
    }
}
