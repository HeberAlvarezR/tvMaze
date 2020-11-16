//
//  DetailRouter.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation
import UIKit

class DetailRouter{
    var view: DetailViewController 
    var presenter: DetailPresenter
    var interactor: DetailInteractor
    var window: UIWindow?
    
    init(in window: UIWindow?) {
        view = DetailViewController()
        presenter = DetailPresenter()
        interactor = DetailInteractor()
        
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        self.window = window
    }
    
}

extension DetailRouter: DetailRouterProtocol{
    func showView(data: TVMaze){
        guard let navigation = window?.rootViewController as? UINavigationController else { return }
        view.tvMazeInfo = data
        navigation.pushViewController(view, animated: true)
    }
}
