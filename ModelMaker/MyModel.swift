//
//  HttpBin.swift
//
//  this file is auto create by WTKit on 2020-03-13 22:50:14.
//  site:https://github.com/songwentong/ModelMaker
//  Thank you for use my json model maker😜
//

import Foundation
public class HttpBin:NSObject, Codable {
    var args:args_class = args_class()
    var url:String = ""
    var headers:headers_class = headers_class()
    var origin:String = ""
    enum CodingKeys: String, CodingKey {
        case args = "args"
        case url = "url"
        case headers = "headers"
        case origin = "origin"
    }
}
public extension HttpBin{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of HttpBin:\nargs:\(args)\nurl:\(url)\nheaders:\(headers)\norigin:\(origin)\n"
        
    }
}
public class args_class:NSObject, Codable {
}
public extension args_class{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of args_class:\n"
        
    }
}
public class headers_class:NSObject, Codable {
    var Accept:String = ""
    var Host:String = ""
    var User_Agent:String = ""
    var Accept_Language:String = ""
    var Accept_Encoding:String = ""
    var X_Amzn_Trace_Id:String = ""
    enum CodingKeys: String, CodingKey {
        case Accept = "Accept"
        case Host = "Host"
        case User_Agent = "User-Agent"
        case Accept_Language = "Accept-Language"
        case Accept_Encoding = "Accept-Encoding"
        case X_Amzn_Trace_Id = "X-Amzn-Trace-Id"
    }
}
public extension headers_class{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return "debugDescription of headers_class:\nAccept:\(Accept)\nHost:\(Host)\nUser-Agent:\(User_Agent)\nAccept-Language:\(Accept_Language)\nAccept-Encoding:\(Accept_Encoding)\nX-Amzn-Trace-Id:\(X_Amzn_Trace_Id)\n"
        
    }
}
