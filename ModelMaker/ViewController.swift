//
//  ViewController.swift
//  ModelMaker
//
//  Created by SongWentong on 24/08/2017.
//  Copyright © 2017 songwentong. All rights reserved.
//  gson 支持curl请求

import Cocoa
import WTKit
class Empty: Codable {
    
}
class ViewController: NSViewController {
    
    
    @IBOutlet weak var jsonStatusView: NSView!//
    @IBOutlet weak var typeSegment: NSSegmentedControl!//类型选择
    @IBOutlet weak var autoRemoveButton: NSButton!//question mark
    @IBOutlet weak var modelTextField: NSTextField!//类名
    @IBOutlet weak var statusTextField: NSTextField!//状态栏文字
    @IBOutlet weak var pathTextField: NSTextField!//路径输入框
    @IBOutlet var textView: NSTextView!//json文字输入框
    @IBOutlet weak var statusLightView: NSView!//状态指示灯
    @IBOutlet var effect: NSTextView!//效果框
    var modelStructName: String = "ModelName"
    var isJSON = false
    var jsonError:NSError? = nil;
    @objc var testNum:Int = 1
    //var is
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        WTModelMaker.default.needOptionalMark = false
        WTModelMaker.default.useStruct = false
        typeSegment.selectedSegment = 0
        setDefaultString()
        checkJSONText()
        testCodableRead()
        testMirror()
        //        let mir = Mirror.init(reflecting: self)
        //        print("\(mir.description)")
        testRequest()
    }
    func testRequest() {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = ["testAddtionSWT":"testAddtionSWT"]
        let session = URLSession.init(configuration: configuration)
        var request = URLRequest.init(url: "http://www.baidu.com".urlValue)
        request.setValue("testAddtionSWTReq", forHTTPHeaderField: "testAddtionSWTReq")
        let task = session.dataTask(with: request) { (data, res, err) in
            
        }
        task.resume()
        //        let task = URLSession.shared.dataTask(with: "https://www.apple.com?a=a&b=b",method: .get, parameters: ["c":"c"] , object: { (obj:Empty) in
        //
        //        }) { (data, res, err) in
        //
        //        }
        //        print("\(task)")
        //
        
    }
    override var description: String{
        return "ABC"
    }
    override var debugDescription: String{
        return "debug"
    }
    func testMirror() -> Void {
//        let m1 = Model()
//        let m2 = m1.copyOfSelf
//        dprint("\(m1) \(m2)")
//        let m2 = Model2()
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        checkJSONText()
    }
    
    @IBAction func addQuestionMark(_ sender: Any) {
        if autoRemoveButton.state == .on{
            WTModelMaker.default.needOptionalMark = true
        }else{
            WTModelMaker.default.needOptionalMark = false
        }
        checkJSONText()
    }
    @IBAction func typeSelect(_ sender: Any) {
        var useStruct = false
        if typeSegment.selectedSegment == 1 {
            useStruct = true
        }
        WTModelMaker.default.useStruct = useStruct
        checkJSONText()
    }
    
    //这是一个model创建的工具，运行看效果吧,不错吧，😜
    func testCodableRead(){
        
        if let url:URL = Bundle.main.url(forResource: "JSONData", withExtension: nil) {
            do{
                let data = try Data.init(contentsOf: url)
                let instance = try JSONDecoder().decode(HttpBin.self, from: data)
                debugPrint("\(instance.jsonString)")
                print("\(instance.jsonString)")
                print("\(instance)")
            }catch let error as NSError{
                print("\(error)")
            }
        }
        
        
        
        
    }
    
    func setDefaultString(){
        var home = "/Users/"
        //        let user = NSUserName()
        //        home = home + user + "/Desktop"
        home = NSHomeDirectory() + "/Documents"
        //        home = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .allDomainsMask, false)[0]
        //        let url = URL.init(fileURLWithPath: home, relativeTo: nil)
        //        NSWorkspace.shared.activateFileViewerSelecting([url])
        
        
        
        pathTextField.cell?.stringValue = home
        print("\(home)")
        modelTextField.cell?.stringValue = modelStructName
        modelTextField.delegate = self
        
        if let url:URL = Bundle.main.url(forResource: "JSONData", withExtension: nil) {
            do{
                let data = try Data.init(contentsOf: url)
                let string = String.init(data: data, encoding: .utf8)!
                //jsonObject = JSONSerialization.WTJSONObject(with: data)! as AnyObject
                //jsonTextView.text = jsonString
                
                textView.string = string
            }catch let error as NSError{
                print("\(error)")
            }
        }
        textView.delegate = self;
    }
    
    //生成
    @IBAction func createButton(_ sender: Any) {
        if let cell1 = pathTextField.cell {
            if let cell2 = modelTextField.cell{
                let path = cell1.stringValue
                let className = cell2.stringValue
                
                let filePath = path + "/" + className + ".swift"
                //                let modelString = WTModelMaker.default.WTSwiftModelString(with: className, jsonString: textView.string,usingHeader: true)
                
                
                do {
                    
                    try self.effect.string.write(toFile: filePath, atomically: true, encoding: .utf8)
                    print("写文件成功,请在Finder查看")
                    let url = URL.init(fileURLWithPath: filePath, relativeTo: nil)
                    NSWorkspace.shared.activateFileViewerSelecting([url])
                    
                }catch{
                    print("写文件失败")
                }
                
                
                
            }
        }
        
    }
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}
//Notification
extension ViewController{
}
extension ViewController:NSTextFieldDelegate{
    open func controlTextDidChange(_ obj: Notification){
        if let cell = modelTextField.cell{
            modelStructName = cell.stringValue
            checkJSONText()
        }
    }
}

extension ViewController:NSTextViewDelegate{
    
    public func textDidChange(_ notification: Notification){
        print("notification:\(notification)")
        textView.backgroundColor = NSColor.black
        textView.textColor = NSColor.white
        jsonError = nil
        if let a:NSTextView = notification.object as? NSTextView {
            //            let string = textView.string
            //            textView.string = string as String
            if a == textView {
                checkJSONText()
            }
        }
        
    }
    public func checkJSONText(){
        //        textView.textColor = NSColor.black
        
        var string = textView.string
        //        let str = "“”，。：¥“”，。：¥“”，。：¥".converToHalfWidth()
        //        print("\(str)")
        
        string = string.halfWidthString
        //        string = string.replacingOccurrences(of: "”", with: "\"")
        guard let data = string.data(using: .utf8) else{
            return
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            isJSON = true
            let modelString = WTModelMaker.default.WTSwiftModelString(with: modelStructName, jsonString: string, usingHeader: true)
            effect.string = modelString
            print("json:\(json)")
        } catch let error as NSError {
            isJSON = false
            jsonError = error
            print("json parse error:\(error)")
        }
        
        
        updateLight()
    }
    public func updateLight(){
        if isJSON {
            jsonStatusView.layer?.backgroundColor = NSColor.green.cgColor
            if statusLightView.layer == nil{
                statusLightView.layer = CALayer.init()
            }
            //            statusLightView.backgroundColor = NSColor.green.cgColor
            statusLightView.layer?.backgroundColor = NSColor.green.cgColor
            statusTextField.cell?.stringValue = "合法的JSON"
        }else{
            statusLightView.layer?.backgroundColor = NSColor.red.cgColor
            if let userInfo = jsonError?.userInfo {
                statusTextField.cell?.stringValue = "error:\(userInfo))"
            }
        }
        statusLightView.layer?.cornerRadius = 8
    }
}
