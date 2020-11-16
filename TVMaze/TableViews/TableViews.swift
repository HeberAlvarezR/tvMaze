//
//  TableViews.swift
//  TVMaze
//
//  Created by Heber on 14/11/20.
//

import UIKit
class TableViews: UIView {
    let tableView = UITableView()
    var elements = TVMaze()
    var delegate: OnSelectElement?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTableView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setTableView()
        
    }
    // Functions
    func setTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "TableViewsCell", bundle: nil), forCellReuseIdentifier:"cellElement")
        self.addSubview(tableView)
        
        
        /// Anclas de la tabla
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor,padding: UIEdgeInsets(top: 4, left: 8, bottom: 8, right: 8))
        //tableViewHeight = tableView.heightAnchor.constraint(equalToConstant: 120)
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowRadius = 0.4
        self.clipsToBounds = false
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        tableView.separatorStyle = .none
    }
    func fillElements(elements: TVMaze){
        self.elements = elements
        tableView.reloadData()
        
    }
    
}

// Protocols
protocol SelectableElements {
    var selectableText: String {get} // No tenía set
    var isSelected: Bool?{get set}
}
protocol OnSelectElement {
    func onSelectElement(drop: TableViews,element: SelectableElements)

}

extension TableViews: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellElement") as! TableViewsCell
        cell.titleLabel.text = elements[indexPath.row].name
        cell.iconView.imageFromURL(urlString: (elements[indexPath.row].image?.medium)!.replacingOccurrences(of: "http", with: "https"))
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    
}
