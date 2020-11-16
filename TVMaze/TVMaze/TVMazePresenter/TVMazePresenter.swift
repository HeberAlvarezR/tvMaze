//
//  TVMazePresenter.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

class TVMazePresenter {
    var view: TVMazeViewProtocol?
    var interactor: TVMazeInteractorInputProtocol?
    var router: TVMazeRouterProtocol?
}
// View -> Presenter
extension TVMazePresenter: TVMazePresenterProtocol{
    func launchTVShows() {
        // Manda a llamar al interactor
        interactor?.getData()
        
    }
    
    
}

extension TVMazePresenter: TVMazeInteractorOutputProtocol{
    func recieveData(data: TVMaze) {
        router?.showDetailView(data: data)
        view?.onDataReceived()
        
    }
    
    
}

