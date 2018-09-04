//
//  TestViewController.swift
//  Swift4Demo
//
//  Created by st on 2018/9/3.
//  Copyright © 2018年 st. All rights reserved.
//

import UIKit

class TestViewController: UIViewController{
    // MARK: 1.lift cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
    
    // MARK: 2.private methods
    
    // MARK: 3.event response
    
    // MARK: 4.interface
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: self.view.frame, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }()
}

extension TestViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        }
        cell?.textLabel?.text = String(indexPath.row)
        cell?.detailTextLabel?.text = String(indexPath.row)
        return cell!
    }
}

extension TestViewController: UITableViewDelegate{
    
}




