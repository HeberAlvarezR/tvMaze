//
//  ExtensionUIImageView.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import Foundation

import UIKit

extension UIImageView{
    
    public func imageFromURL(urlString: String){
        if let url = URL(string: urlString){
            let request = URLRequest(url: url)
            let config = URLSessionConfiguration.default
            let session = URLSession(configuration: config)

            session.dataTask(with: request) { (data, response, error) in
                DispatchQueue.global(qos: .background).async{
                    if let imageData = data as Data? {
                        DispatchQueue.main.async {
                            self.image = UIImage(data: imageData)
                        }
                    } else {
                        print("Algo salió mal con la imagen")
                    }
                }
            }.resume()
        }
    }

}
