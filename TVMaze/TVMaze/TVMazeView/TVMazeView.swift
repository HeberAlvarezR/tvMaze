//
//  TVMazeView.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import UIKit

class TVMazeView: UIViewController{
    
    var presenter: TVMazePresenterProtocol?
    var tvMaze: TVMazeElement?
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.launchTVShows()

    }
}

extension TVMazeView: TVMazeViewProtocol{
    func onDataReceived() {
//        testLabel.text = tvMaze?.id
    }
    
    
}
