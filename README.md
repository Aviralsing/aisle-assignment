<h1>iOS Example App<br /></h1>
###Aisle-assignmnet SwiftUI iOS app showcasing three screens for login OTP & Feed<br />

<h3>Built using XCode Version 13.4.1 <br /></h3>

<h1>How to run the example?<br /></></h1>

$Clone this repo<br />
$Open shell window and navigate to project folder<br />
$Run pod install<br />
$Open aisle-assignment.xcworkspace and run the project on selected device or simulator.<br />

<h1>How was it created?<br /></h1>

*Open XCode. File->New->Project->Single View App->aisle-assignment<br />
*Create Podfile with your target name and Particle pods reference (see file)<br />
*Close XCode Project<br />
*Open shell window and navigate to the project folder<br />
*Run pod install (make sure your have latest Cocoapods installed), pods will be installed and new XCode workspace file will be created.<br />
*in XCode open the new <aisle-assignment>.xcworkspace<br />
*Add bridging header - see file aisle-assignment.h for reference.<br />
*Go to project settings->build settings->Objective-C bridging header->type in aisle-assignment.h (or wherever file is located).<br />
*Create the source code and SwiftUI for your app (see ViewController.swift and ContentView for reference)<br />
*(CTRL + R)Build and run - works on simulator and device.<br />
