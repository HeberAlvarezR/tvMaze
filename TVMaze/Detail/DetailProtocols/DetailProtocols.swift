//
//  DetailProtocols.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

// Presenter -> View
protocol DetailViewProtocol{
    func setTvShows(tvShows: TVMaze)
    
}

// View -> Presenter
protocol DetailPresenterProtocol {
    
}

// Presenter -> Interactor
protocol DetailInteractorInputProtocol {
    
}

// Interactor -> Presenter
protocol DetailInteractorOutputProtocol {
    
}

// Presenter -> Router
protocol DetailRouterProtocol {
    func showView(data: TVMaze)
    
}

