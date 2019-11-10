//
//  DetailViewController.swift
//  testPopUpViewForPad
//
//  Created by 地引秀和 on 2019/11/10.
//  Copyright © 2019 Jibiki Works. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet var button: UIButton!
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        self.openPopoverView(sourceView: sender)
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func openAlertPopoverView(sourceView: UIView) {
        let alert = UIAlertController(title: "セグメント", message: nil, preferredStyle: .actionSheet)
        alert.popoverPresentationController?.sourceView = sourceView
        alert.addAction(UIAlertAction(title: "1", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "2", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "3", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    func openPopoverView(sourceView: UIView) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let contentVC = storyboard.instantiateViewController(withIdentifier: "PopoverNavigationController")
        
        // スタイルの指定
        contentVC.modalPresentationStyle = .popover
        // サイズの指定
        contentVC.preferredContentSize = CGSize(width: 300, height: 300)
        // 表示するViewの指定
        contentVC.popoverPresentationController?.sourceView = self.view
        // ピヨッと表示する位置の指定
        contentVC.popoverPresentationController?.sourceRect = sourceView.frame
        // 矢印が出る方向の指定
        contentVC.popoverPresentationController?.permittedArrowDirections = [.up]
        // デリゲートの設定
//        contentVC.popoverPresentationController?.delegate = self
        
        
        //表示
        present(contentVC, animated: true, completion: nil)

    }
}

