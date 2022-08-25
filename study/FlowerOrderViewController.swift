//
//  FlowerOrderViewController.swift
//  study
//
//  Created by 김홍석 on 2022/05/07.
//

import UIKit
import PagingKit

class FlowerOrderViewController: UIViewController {
    
    // menuViewController와 contentViewController를 따로 생성하여 적용
    var menuViewController: PagingMenuViewController!
    var contentViewController: PagingContentViewController!
    
    var dataSource = [(menu: String, content: UIViewController)]() {
        didSet {
            menuViewController.reloadData()
            contentViewController.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuViewController.register(nib: UINib(nibName: "MenuCell", bundle: nil), forCellWithReuseIdentifier: "MenuCell")
        menuViewController.registerFocusView(nib: UINib(nibName: "FocusView", bundle: nil))
        
        menuViewController.cellAlignment = .center
        
        menuViewController.reloadData()
        contentViewController.reloadData()
        
        dataSource = makeDataSource()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
            menuViewController.dataSource = self
            menuViewController.delegate = self
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
            contentViewController.dataSource = self
            contentViewController.delegate = self
        }
    }
    
    fileprivate func makeDataSource() -> [(menu: String, content: UIViewController)] {
        let myMenuArray = ["근조화환", "바구니/오브제", "리본교체"]
        
        return myMenuArray.map {
            let title = $0
            
            switch title {
            case "근조화환":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
                return (menu: title, content: vc)
                
            case "바구니/오브제":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                return (menu: title, content: vc)
                
            case "리본교체":
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
                return (menu: title, content: vc)
                
            default :
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
                return (menu: title, content: vc)
            }
        }
    }
}

extension FlowerOrderViewController: PagingMenuViewControllerDataSource {
    func numberOfItemsForMenuViewController(viewController: PagingMenuViewController) -> Int {
        return dataSource.count
    }
    
    func menuViewController(viewController: PagingMenuViewController, widthForItemAt index: Int) -> CGFloat {
        return self.view.frame.width / 3
    }
    
    func menuViewController(viewController: PagingMenuViewController, cellForItemAt index: Int) -> PagingMenuViewCell {
        let cell = viewController.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: index) as! MenuCell
        cell.titleLabel.text = dataSource[index].menu
        
        return cell
    }
}

extension FlowerOrderViewController: PagingMenuViewControllerDelegate {
    func menuViewController(viewController: PagingMenuViewController, didSelect page: Int, previousPage: Int) {
        contentViewController.scroll(to: page, animated: true)
    }
}

extension FlowerOrderViewController: PagingContentViewControllerDataSource {
    func numberOfItemsForContentViewController(viewController: PagingContentViewController) -> Int {
        return dataSource.count
    }
    
    func contentViewController(viewController: PagingContentViewController, viewControllerAt index: Int) -> UIViewController {
        return dataSource[index].content
    }
}

extension FlowerOrderViewController: PagingContentViewControllerDelegate {
    func contentViewController(viewController: PagingContentViewController, didManualScrollOn index: Int, percent: CGFloat) {
        menuViewController.scroll(index: index, percent: percent, animated: false)
    }
}
