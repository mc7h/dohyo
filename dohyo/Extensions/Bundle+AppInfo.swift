//
//  Bundle+AppInfo.swift
//  dohyo
//
//  Created by marc on 28/1/2025.
//

import Foundation

extension Bundle {
    var appName: String {
        return object(forInfoDictionaryKey: "CFBundleName") as? String ?? "Unknown App Name"
    }
    var appVersion: String {
        return object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Unknown App Version"
    }
    var buildVersion: String {
        return object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "Unknown Build Version"
    }
}
