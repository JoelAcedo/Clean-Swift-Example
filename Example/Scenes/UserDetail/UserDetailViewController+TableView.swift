//
//  UserDetailViewController+TableView.swift
//  Example
//
//  Created by Joel on 06/04/2017.
//  Copyright © 2017 HELM S.C.P. All rights reserved.
//

import UIKit
import Kingfisher

extension UserDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].atributes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let atributeCell = tableView.dequeueReusableCell(withIdentifier: "AtributeCell") {
            let section = sections[indexPath.section]
            let attribute = section.atributes[indexPath.row]
            atributeCell.textLabel?.text = attribute.title
            atributeCell.detailTextLabel?.text = attribute.value
            
            return atributeCell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
}
