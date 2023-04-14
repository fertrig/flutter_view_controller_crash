import Cocoa

import FlutterMacOS

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        _launch_1()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    func _launch_1() {
        // Replace /PATH/TO with your own path
        let bundleUrl = URL(fileURLWithPath: "/PATH/TO/flutter_view_controller_crash/fl_master/yellow_bundle")
        let bundle = Bundle.init(path: bundleUrl.path)
        let project = FlutterDartProject.init(precompiledDartBundle: bundle)
        let controller = FlutterViewController.init(project: project)
        let window = NSWindow()
        window.contentViewController = controller
        let windowController = NSWindowController()
        windowController.contentViewController = window.contentViewController
        
        window.setContentSize(NSSize(width: 300, height: 400))
        window.setFrameOrigin(NSPoint(x: 100.0, y: 100.0))
        window.title = "yellow"
        
        windowController.window = window
        windowController.showWindow(self)
    }

}

