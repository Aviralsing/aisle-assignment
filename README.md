#iOS Example App
###Aisle-assignmnet SwiftUI iOS app showcasing three screens for login OTP & Feed

Built using XCode Version 13.4.1 

#How to run the example?
###Clone this repo
###Open shell window and navigate to project folder
###Run pod install
###Open aisle-assignment.xcworkspace and run the project on selected device or simulator.

#How was it created?

###Open XCode. File->New->Project->Single View App->aisle-assignment
###Create Podfile with your target name and Particle pods reference (see file)
###Close XCode Project
###Open shell window and navigate to the project folder
###Run pod install (make sure your have latest Cocoapods installed), pods will be installed and new XCode workspace file will be created.
###in XCode open the new <aisle-assignment>.xcworkspace
###Add bridging header - see file aisle-assignment.h for reference.
###Go to project settings->build settings->Objective-C bridging header->type in aisle-assignment.h (or wherever file is located).
###Create the source code and SwiftUI for your app (see ViewController.swift and ContentView for reference)
###(CTRL + R)Build and run - works on simulator and device.
