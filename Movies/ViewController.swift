//
//  ViewController.swift
//  Movies
//
//  Created by Leandro de Sousa Silva on 12/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let cellId = "cellId"
    fileprivate let moviesArray = getContentMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let moviesVerified = moviesArray{
            return moviesVerified.count
        } else {
            print("Error numbers of Rows")
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MoviesList
        if let moviesVerified = moviesArray{
            let moviesContent = moviesVerified[indexPath.row]
            cell.titleMovie.text = moviesContent.titleMovie
            cell.descriptionMovie.text = moviesContent.descriptionMovie
            cell.imageMovie.image = moviesContent.imageMovie
        }
       
        return cell 
    }
    


}
