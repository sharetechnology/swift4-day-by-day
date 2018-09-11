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
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }()
}

extension TestViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TestCell.cell(tableView) as! TestCell
        cell.contentLabel.text = String(indexPath.row)
        print(indexPath)
        return cell
    }
}

extension TestViewController: UITableViewDelegate{
    
}

extension UITableViewCell{
    class func cell(_ tableView: UITableView) -> UITableViewCell {
        let className = NSStringFromClass(self).components(separatedBy: ".").last
        var cell = tableView.dequeueReusableCell(withIdentifier: className!)
        if cell == nil {
            cell = self.init(style: .default, reuseIdentifier: className)
            cell?.setupUI()
            
            print("------------")
        }
        return cell!
    }
    
    @objc func setupUI(){
        contentView.backgroundColor = .red
    }
}

class TestCell: UITableViewCell {
    override func setupUI() {
        super.setupUI()
        contentView.backgroundColor = .blue
        contentView.addSubview(contentLabel)
    }
    
    var contentLabel: UILabel = {
        let contentLabel = UILabel()
        contentLabel.frame = CGRect.init(x: 100, y: 10, width: 100, height: 20)
        contentLabel.textColor = .red
        return contentLabel
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print(subviews.count)
    }
}

//class STCell: UITableViewCell {
//    class func cell(_ tableView: UITableView) -> STCell {
//        let className = NSStringFromClass(self).components(separatedBy: ".").last
//        var cell = tableView.dequeueReusableCell(withIdentifier: className!)
//        if cell == nil {
//            cell = self.init(style: .default, reuseIdentifier: className)
//        }
//        return cell as! STCell
//    }
//
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupUI()
//    }
//
//    //修饰词 final 表示 不可重写 可以将类或者类中的部分实现保护起来,从而避免子类破坏
////    final func setupUI(){
////        contentView.backgroundColor = .red
////    }
//
//    func setupUI(){
//         contentView.backgroundColor = .red
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//class TestCell: STCell{
//
//}



