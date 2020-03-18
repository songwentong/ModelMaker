//
//  HttpBin.swift
//
//  this file is auto create by WTKit on 2020-03-16 19:11:58.
//  site:https://github.com/songwentong/ModelMaker
//  Thank you for use my json model maker😜
//

import Foundation
public class HttpBin:NSObject, Codable {
    var origin:String = ""
    var url:String = ""
    var args:String = ""
    enum CodingKeys: String, CodingKey {
        case origin = "origin"
        case url = "url"
        case args = "args"
    }
}
public extension HttpBin{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return """
        <ModelMaker.HttpBin: \(Unmanaged.passUnretained(self).toOpaque())>
        origin:\(origin)
        url:\(url)
        args:\(args)
        """
    }
}
