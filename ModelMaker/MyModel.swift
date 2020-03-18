//
//  HttpBin.swift
//
//  this file is auto create by WTKit on 2020-03-18 09:01:52.
//  site:https://github.com/songwentong/ModelMaker
//  Thank you for use my json model maker😜
//

import Foundation
public class HttpBin:NSObject, Codable {
    var url:String = ""
    var origin:String = ""
    var args:args_class = args_class()
    var headers:headers_class = headers_class()
    enum CodingKeys: String, CodingKey {
        case url = "url"
        case origin = "origin"
        case args = "args"
        case headers = "headers"
    }
}
public extension HttpBin{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return """
        <HttpBin: \(Unmanaged.passUnretained(self).toOpaque())>
        url:\(url)
        origin:\(origin)
        args:\(args)
        headers:\(headers)
        """
    }
}
public class args_class:NSObject, Codable {
}
public extension args_class{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return """
        <args_class: \(Unmanaged.passUnretained(self).toOpaque())>
        """
    }
}
public class headers_class:NSObject, Codable {
    var Accept:String = ""
    var Accept_Encoding:String = ""
    var X_Amzn_Trace_Id:String = ""
    var User_Agent:String = ""
    var Host:String = ""
    var Accept_Language:String = ""
    enum CodingKeys: String, CodingKey {
        case Accept = "Accept"
        case Accept_Encoding = "Accept-Encoding"
        case X_Amzn_Trace_Id = "X-Amzn-Trace-Id"
        case User_Agent = "User-Agent"
        case Host = "Host"
        case Accept_Language = "Accept-Language"
    }
}
public extension headers_class{
    override var description: String{
        return debugDescription
    }
    override var debugDescription: String{
        return """
        <headers_class: \(Unmanaged.passUnretained(self).toOpaque())>
        Accept:\(Accept)
        Accept_Encoding:\(Accept_Encoding)
        X_Amzn_Trace_Id:\(X_Amzn_Trace_Id)
        User_Agent:\(User_Agent)
        Host:\(Host)
        Accept_Language:\(Accept_Language)
        """
    }
}
