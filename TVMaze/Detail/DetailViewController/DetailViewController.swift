//
//  DetailViewController.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//
import UIKit

class DetailViewController: UIViewController {
    
    
    var tvMazeInfo: TVMaze?
    @IBOutlet weak var tvShowsTableView: TableViews!
    var presenter: DetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarStyle()
        tvShowsTableView.delegate = self
        DispatchQueue.main.async { [self] in
            guard let info = tvMazeInfo else {return}
            setTvShows(tvShows: info)
        }
        // Do any additional setup after loading the view.
    }
    
    func navigationBarStyle(){
        navigationController?.navigationBar.barTintColor = UIColor.orange
        navigationController?.visibleViewController?.title = "TV Shows"
    }
    @IBAction func tvShowsButton(_ sender: Any) {
        print("Hello")
    }
    @IBAction func favouritesButton(_ sender: Any) {
        print("Goodbye")
    }
    
    
}

extension DetailViewController: DetailViewProtocol{
    func setTvShows(tvShows: TVMaze) {
        tvShowsTableView.fillElements(elements: tvShows)
    }
    
    
}

extension DetailViewController: OnSelectElement{
    func onSelectElement(drop: TableViews, element: SelectableElements) {
        
    }
}


