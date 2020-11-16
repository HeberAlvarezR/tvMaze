//
//  TVMazeRouter.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation
import UIKit

class TVMazeRouter{
    // Inicializamos todos los elementos
    var view: TVMazeView
    var presenter: TVMazePresenter
    var interactor: TVMazeInteractor
    var remoteDataManager: TVMazeRemoteDataManager
    var window: UIWindow?
    
    init(in window: UIWindow?){
        // Aquí inicializamos
        view = TVMazeView()
        presenter = TVMazePresenter()
        interactor = TVMazeInteractor()
        remoteDataManager = TVMazeRemoteDataManager()
        view.presenter = self.presenter
        presenter.view = self.view 
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        interactor.remoteManager = self.remoteDataManager
        remoteDataManager.interactor = self.interactor
        self.window = window // porque el window de base lo vamos a ir arrastrando en todas pantallas.
    }
    
}

extension TVMazeRouter: TVMazeRouterProtocol{
    func showDetailView(data: TVMaze) {
        DispatchQueue.main.async {
            let detail = DetailRouter(in: self.window) 
            detail.showView(data: data)
        }
    }
    
    func showTableView() {
        window?.rootViewController = UINavigationController(rootViewController: view)
        window?.makeKeyAndVisible()
    }
    
}




