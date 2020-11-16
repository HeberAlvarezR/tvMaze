//
//  TVMazeInteractor.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

class TVMazeInteractor{
    var presenter: TVMazeInteractorOutputProtocol?
    var remoteManager: TVMazeRemoteDataInputProtocol?
}
    
extension TVMazeInteractor: TVMazeInteractorInputProtocol{
    func getData() {
        // Manda llamar al servicio y obtienes los datos
        // Crearemos una capa de conexión
        remoteManager?.connectWithApi()
    }
}

extension TVMazeInteractor: TVMazeRemoteDataOutputProtocol {
    func getRemoteData(data: TVMaze) { 
        presenter?.recieveData(data: data)
        
    }
    
    
}

