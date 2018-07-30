//
//  ViewController.swift
//  UseLayer
//
//  Created by EU_ShenJie on 2018/7/26.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController , CALayerDelegate {
    @IBOutlet weak var layerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //添加一个CALayer对象
        let blueLayer : CALayer = CALayer()
        //设置CALayer对象属性
        blueLayer.frame = CGRect(x: 50, y: 50, width: 100, height: 100) //设置位置
        blueLayer.backgroundColor = UIColor.blue.cgColor    //设置背景颜色
        
        //设置图层的代理为本UIViewController（需要遵守CALayerDelegate协议）
        blueLayer.delegate = self
        //设置点与像素的转换呈现方式（和系统底层保持一致）
        blueLayer.contentsScale = UIScreen.main.scale
        
        //添加为子图层
        layerView.layer.addSublayer(blueLayer)
        
        blueLayer.display()
    }

    //CALayerDelegate协议方法（用于明确如何绘图）
    func draw(_ layer: CALayer, in ctx: CGContext) {
        ctx.setLineWidth(10)
        ctx.setStrokeColor(UIColor.red.cgColor)
        ctx.strokeEllipse(in: layer.bounds)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

