//
//  VideoPresenter.swift
//  lampa
//
//  Created Oleg Pogosian on 23.05.2020.
//  Copyright © 2020 Oleg Pogosian. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class VideoPresenter: VideoPresenterProtocol {

    weak private var view: VideoViewProtocol?
    var interactor: VideoInteractorProtocol?
    private let router: VideoWireframeProtocol

    init(interface: VideoViewProtocol, interactor: VideoInteractorProtocol?, router: VideoWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
