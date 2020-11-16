//
//  DetailPresenter.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

class DetailPresenter{
    var view: DetailViewProtocol?
    var interactor: DetailInteractorInputProtocol?
    var router: DetailRouterProtocol?
    
}

extension DetailPresenter: DetailPresenterProtocol{
    
}

extension DetailPresenter: DetailInteractorOutputProtocol{ 
    
}

