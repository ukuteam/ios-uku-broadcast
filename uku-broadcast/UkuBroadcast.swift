//
//  UkuBroadcast.swift
//  uku-broadcast
//
//  Created by Hugo Pievic on 07/02/2022.
//

import Foundation
 
@objc public protocol UnityProtocol: class {
    func requestFooConfiguration(delegate: UnityBridgeDelegate, body:String)
}

@objc public protocol UnityBridgeDelegate: class {
    func fallbackDelegate(status :Int)
}

@objc public class UnityBridge: NSObject, UnityBridgeDelegate {
   
    public func fallbackDelegate(status: Int){
        UkuBroadcastFramework.fallbackfooCallback?(Int32(status));
    }
}


@objc public class UkuBroadcastFramework: NSObject {
    
    @objc public static let shared = UkuBroadcastFramework()
    @objc public static var fallbackfooCallback: RequestFooCallback?
    
    var __delegate: UnityBridgeDelegate? = nil
}


// MARK: - Unity Bridge
// Exposing all the methods that are visible in Unity.
@objc extension UkuBroadcastFramework: UnityProtocol {
    
    public func requestFooConfiguration(delegate: UnityBridgeDelegate, body : String) {
        UkuBroadcastFramework.shared.__delegate = delegate
    }
    
}
