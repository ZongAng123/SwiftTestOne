//
//  ViewController.swift
//  SwiftTestOne
//
//  Created by 纵昂 on 2019/9/27.
//  Copyright © 2019 纵昂 https://github.com/ZongAng123. All rights reserved.
//  Swift 5.1 Released!



import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Swift 5.1 Released!
/**
         Swift 5.1 builds on the strengths of Swift 5 by extending the stable features of the language to compile time with the introduction of module stability. With module stability it’s now possible to create and share binary frameworks that will work with future releases of Swift. Swift 5.1 also extends the capabilities of the language and the standard library with new features such as property wrappers, opaque result types, key path member lookup, diffing for appropriate collection types, and new APIs for String. Altogether the new features of Swift 5.1 make it easier to design better APIs and reduce the amount of common boilerplate code.
    Swift 5.1基于Swift 5的优势，通过引入模块稳定性，将语言的稳定特性扩展到编译时。由于模块的稳定性，现在可以创建和共享二进制框架，这些框架将与Swift的未来版本一起工作。Swift 5.1还扩展了该语言和标准库的功能，提供了一些新特性，比如属性包装器、不透明的结果类型、键路径成员查找、适当集合类型的差异以及字符串的新api。总之，Swift 5.1的新特性使设计更好的api变得更容易，并减少了通用样板代码的数量。
         You can learn more about the design considerations for the 5.1 release in episode 79 of the Swift Unwrapped podcast with Doug Gregor. You can also try out some of the new features in this playground put together by Paul Hudson.
         在Doug Gregor的Swift Unwrapped播客第79集中，您可以了解更多关于5.1版本的设计考虑。你也可以在这个操场上试试保罗·哈德森(Paul Hudson)设计的一些新功能。
         
         Module Stability 模块的稳定性
         Swift 5.1 enables the creation of binary frameworks that can be shared with others leveraging the language’s added support for module stability. Module stability defines a new text-based module interface file that describes the API of a binary framework, allowing it to be compiled with code using different versions of the compiler.

         The release also includes features to support library evolution. For more information about this addition to the language, please refer to the Swift Evolution proposal for Library Evolution.
         Swift 5.1支持创建二进制框架，可以与其他使用该语言添加的模块稳定性支持的框架共享。模块稳定性定义了一个新的基于文本的模块接口文件，该文件描述了二进制框架的API，允许使用不同版本的编译器用代码编译它。

         该版本还包括支持库演化的特性。有关此语言的更多信息，请参考库演进的Swift Evolution建议。
**/
/**
         let newButton:UIButton = UIButton(frame: CGRect(x: 0, y: 20, width: 50, height: 50))
                 newButton.backgroundColor = UIColor.blue
                 newButton.setTitle("点我", for: .normal)
                 newButton.addTarget(self, action: #selector(newButtonAction), for: .touchUpInside)
                 self.view.addSubview(newButton)
        
         **/
    

//MARK: - 按钮的创建
        let newButton:UIButton = UIButton(frame:CGRect(x: 50, y: 90, width: 100, height: 50))
        newButton.backgroundColor = UIColor.blue
        newButton.setTitle("我是按钮", for: .normal)
//        newButton.addTarget(self, action:#selector(newButtonAction), for: .touchDown)
        newButton.addTarget(self, action: #selector(pageJump), for: .touchDown)
        self.view.addSubview(newButton)
        
//MARK: - 创建labeel
        let label = UILabel(frame: CGRect(origin: CGPoint(x: 170, y: 90), size: CGSize(width: 100, height: 50)))
//        label.frame = CGRect(origin: CGPoint(x:100,y:100),size: CGSize(width:200,height:40))
        label.backgroundColor=UIColor.green
//      设置和读取文本内容，默认为nil
        label.text="纵昂";
//      设置文字颜色,默认为黑色
        label.textColor = UIColor.red
//      font设置文字大小，默认为17
        label.font = UIFont.systemFont(ofSize: 20) //一般方法
        label.font = UIFont.boldSystemFont(ofSize: 20) //加粗方法
        label.font = UIFont.init(name: "Avenir-Oblique", size: 20) //指定字体的方法
//      textAlignment设置标签文本对齐方式
        label.textAlignment = NSTextAlignment.center
//      numberOfLines标签最多显示行数，如果为0则表示多行
        label.numberOfLines = 2
//      enabled只是决定了Label的绘制方式，将它设置为NO时文本变暗，表示没有激活，这是向她设置颜色值都是无效的
//      label.isEnabled = false
//      highlighted是否高亮显示
        label.isHighlighted = true
        label.highlightedTextColor=UIColor.yellow//高亮显示时候的文本颜色
//      ShadowColor设置阴影颜色
        label.shadowColor=UIColor.blue
//      ShadowOffset设置阴影偏移量
        label.shadowOffset = CGSize(width: -1, height: 1)
//      baselineAdjustment如果==YES，控制文本基线的行为
        /*
        UIBaselineAdjustmentAlignBaselines = 0, // default. used when shrinking text to position based on the original baseline默认，文本最上端与中线对齐。
        UIBaselineAdjustmentAlignCenters, //文本中线与label中线对齐。
        UIBaselineAdjustmentNone, //文本最低端与label中线对齐。
        */
        label.baselineAdjustment = UIBaselineAdjustment.none
//      Autoshrink是否自动收缩
        /*
        Fixed Font Size默认，如果label宽度小于文字长度时，文字大小不自动缩放
        minimumScaleFactor设置最小收缩比例，如果Label宽度小于文字长度时，文字进行收缩，收缩超过比例后，停止收缩。
        */
        label.minimumScaleFactor = 0.5
        label.adjustsFontSizeToFitWidth = true
// 13、adjustsLetterSpacingToFitWidth改变字母之间的间距来适应Label大小
        view.addSubview(label)
        
//MARK: - 创建UIIMageView
        let imageView = UIImageView(image:UIImage(named:"IMG_1752"))
        imageView.frame = CGRect(x: 60, y: 150, width: 200, height: 300)
        self.view.addSubview(imageView)
    
//MARK: - 创建UITextView对象
        let textview = UITextView(frame: CGRect(x: 10.0, y: 460.0, width: 390.0, height: 100.0))
//      背景颜色设置
        textview.backgroundColor = UIColor.red
//      设置TextView里面的字体颜色
        textview.textColor = UIColor.darkText
//       设置文本字体
        textview.font = UIFont.systemFont(ofSize: 18) //使用系统默认字体，指定14号字号
        textview.font = UIFont(name: "Helvetica-Bold", size: 18) //指定字体，指定字号
//      设置显示内容
        textview.text = "哈喽，大家好，我是昂!!!"
//      文本视图设置圆角
        textview.layer.cornerRadius = 20
        textview.layer.masksToBounds = true
        self.view.addSubview(textview)
        
//MARK: - UITextField的基本用法
/**
  至于有关UITextField的别的一些共深入的学习，在以后的学习中本人会慢慢摸索，对于初学Swift就先从基础下手，逐步深入的学习。。。
**/
        let textField = UITextField(frame: CGRect(x:10, y:590, width:390, height:30))
//         let textField = UITextField()
//         textField.frame = CGRect(x:20,y:30,width:100,height:30)
//        textField.backgroundColor = UIColor.red
//        设置边框样式为圆角矩形
        textField.borderStyle = UITextField.BorderStyle.line
        textField.clearButtonMode = .whileEditing  //编辑时出现清除按钮
        textField.placeholder = "请输入相关信息"
        textField.keyboardType = UIKeyboardType.numberPad
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.becomeFirstResponder()
        self.view.addSubview(textField)
        
        
        
        
    }

//MARK: - 按钮点击事件
    @objc func pageJump() {
        print("你点击了我")
        

//MARK: - 跳转页面 创建一个页面
        let destination = OneViewController()
//MARK: - 取目标页面的一个变量进行赋值，以属性的方式进行传值。
        destination.title = "传递的信息"
//MARK: - 跳转
       self.present(destination, animated: true, completion: nil)
    
        
    }
    
//MARK: - swift3 点击空白收起键盘
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }

}

