//
//  ViewController.swift
//  ObjC_Exception
//
//  Created by M.Ike on 2016/02/20.
//  Copyright © 2016年 M.Ike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 内部でNSExceptionが起こるとSwift上では実行時エラーになる
//        Exception.throwError()

        // ObjectiveCでのNSExceptionはSwiftの例外で捕捉できない
//        do {
//            try Exception.throwError()
//        } catch {
//            print("ここには来ない")
//        }
        
        // なのでObjectiveCの例外処理部分だけラップしたクラスを使う
        ObjC_Exception.objC_try({ _ in
            Exception.throwError()
        },
            
        objC_catch: { (e: NSException) in
            print("catch exception: " + e.debugDescription)
        },
            
        objC_finally: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

