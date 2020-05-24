//
//  FavouritesProtocols.swift
//  lampa
//
//  Created Oleg Pogosian on 23.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol FavouritesWireframeProtocol: class {

}
//MARK: Presenter -
protocol FavouritesPresenterProtocol: class {

}

//MARK: Interactor -
protocol FavouritesInteractorProtocol: class {

  var presenter: FavouritesPresenterProtocol?  { get set }
}

//MARK: View -
protocol FavouritesViewProtocol: class {

  var presenter: FavouritesPresenterProtocol?  { get set }
}
