//
//  TVMazeProtocols.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation


// View -> Presenter
protocol TVMazePresenterProtocol{
    func launchTVShows()
    
}

// Presenter -> Interactor
protocol TVMazeInteractorInputProtocol{
    func getData()
    
}

// Interactor -> Presenter
protocol  TVMazeInteractorOutputProtocol{
    func recieveData(data: TVMaze) 
    
}

// Presenter -> View
protocol TVMazeViewProtocol{
    func onDataReceived()
    
}

// Presenter -> Router
protocol TVMazeRouterProtocol {
    func showTableView()
    func showDetailView(data: TVMaze)
}

// Interactor -> Remote
protocol TVMazeRemoteDataInputProtocol {
    func connectWithApi()
    
}

// Remote -> Interactor
protocol TVMazeRemoteDataOutputProtocol {
    func getRemoteData(data: TVMaze)
}
