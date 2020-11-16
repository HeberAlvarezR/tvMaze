//
//  TVMazeRemoteDataManager.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

class TVMazeRemoteDataManager{
    var interactor: TVMazeRemoteDataOutputProtocol?
}

extension TVMazeRemoteDataManager: TVMazeRemoteDataInputProtocol{
    func connectWithApi() {
        let session = URLSession.shared // Sesión para conectarme a la API
        var request = URLRequest(url: URL(string: "https://api.tvmaze.com/shows")!)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // se comunica con el protocolo http
        request.setValue("application/json", forHTTPHeaderField: "Accept") // acepta el tipo de contenido
        request.setValue("no-cache", forHTTPHeaderField: "cache-control")
        session.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else {
                print("Error con la conexión: \(error!)")
                return
            }
            if response.statusCode == 200{
                print("Traemos del servidor: \(data)")
                do {
                    let decoder = JSONDecoder()
                    let info = try decoder.decode(TVMaze.self, from: data)
                    print(info)
                    self.interactor?.getRemoteData(data: info)
                } catch{
                    print("Error")
                }
            }
        }.resume()
    }
}
