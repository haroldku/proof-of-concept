//
//  AppDelegate.swift
//  Proof-of-Concept
//
//  Created by Harold Kurth on 7/27/15.
//  Copyright (c) 2015 Harold Kurth. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)
        if let button = statusItem.button {
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = Selector("printQuote:")
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func printQuote(sender: AnyObject) {
        let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
        let quoteAuthor = "Mark Twain"
        
        println("\(quoteText) — \(quoteAuthor)")
    }

}

