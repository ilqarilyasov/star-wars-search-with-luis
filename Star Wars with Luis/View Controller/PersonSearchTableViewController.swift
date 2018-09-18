//
//  PersonSearchTableViewController.swift
//  Star Wars with Luis
//
//  Created by Ilgar Ilyasov on 9/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PersonSearchTableViewController: UITableViewController, UISearchBarDelegate {
    
    let personController = PersonController()
    var people: [Person] = []
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonTableViewCell
        let person = people[indexPath.row]
        
        cell.nameLabel.text = person.name
        cell.genderLabel.text = person.gender
        cell.ageLabel.text = person.birthYear
        
        return cell
    }
    
    // MARK: - SearchBar Delegate
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchTerm = searchBar.text, !searchTerm.isEmpty else { return }
        
        personController.searchForPeople(with: searchTerm) { (people, error) in
            self.people = people ?? []
        }
        
    }
    
}
