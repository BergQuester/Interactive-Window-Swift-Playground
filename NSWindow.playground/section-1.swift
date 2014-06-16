// Playground with interactive NSWindow
// Created by Daniel Bergquist
// June 15th, 2014
// MIT license

// Duration of execution is limited by the playground timeout.
// Open the Assistant Editor (Cmd+Option+Enter) and edit the value in the lower-right hand corner of the window
// Editing the playground will cause the window to restart!
// PLEASE NOTE: Interaction seems to be flakey at this stage (Eg NSButtons can be clicked, but NSTextFields revert focus back to the playgroung.
// Contributions welcome at https://github.com/BergQuester/Interactive-Window-Swift-Playground


import Cocoa
import XCPlayground

// Window size
let windowRect = NSRect(x: 30, y: 30, width: 400, height: 400)

var window = NSWindow(contentRect: NSRect(x: 30, y: 30, width: 400, height: 400), styleMask: NSTitledWindowMask, backing: .Buffered, defer: false)

// Configure window here

// Content view
let viewRect = NSRect(x: 0, y: 0, width: 300, height: 300)
var view = NSView(frame: viewRect)

// configure your content view and add subviews here
var textField = NSTextField(frame: NSRect(x: 30, y: 30, width: 100, height: 20))


textField.stringValue = "Test"

view.addSubview(textField)

var button = NSButton(frame: NSRect(x: 30, y: 60, width: 100, height: 30))

button.highlight(true)

var buttonCell:NSButtonCell = button.cell() as NSButtonCell
buttonCell.bezelStyle = NSBezelStyle.RoundedBezelStyle
view.addSubview(button)


// display window
window.contentView.addSubview(view)
window.makeKeyAndOrderFront(nil)

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)
