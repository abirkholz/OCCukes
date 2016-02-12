# [![Cucumber Roll](http://files.softicons.com/download/object-icons/richs-misc-icons-by-rich-d/png/24/Cucumber%20Roll.png)](https://github.com/OCCukes/OCCukes) Objective-C Cucumber Wire Protocol

OCCukes Main: https://github.com/OCCukes/OCCukes 

This version of OCCukes is updated for use with the XCode XCunit.framework. SenTestKit.framework has since been deprecated by Apple. SenTest is the framework OCCukes was originally built on. 

In order to use this in a Cucumber native Objective-C project, download this OCCukes repo and do the following: 
- Configure code signing identities for OCCukes, OCExpectations and CFSockets submodules
- Build the OCCukes target
- Build the OCCukesLib target. If you plan executing on a simulator, then build the OCCukesLib target for one of the simulators. If you plan on executing on a device, build the target for iOS device. You can do both. 
- Once compiled successfully, expand the Products folder. The OCCukes.framework and the OCCukesTest.xctest products should be in black, not red.
- Right click either CCukes.framework or OCCukesTest.xctest and select reveal in finder. 
- There should be a folder called 'Release-iphoneos' and/or 'Release-simulator'. Within each of these folders there should be a libCFSockets.a, libOCCukes.a and a libOCCExpectations.a. 
- Copy these .a static libraries into your automation solution. 

## MIT Licensing

Copyright © 2012, 2013 The OCCukes Organisation. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS,” WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO
EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

## Sponsors

- Levide Capital Limited, Blenheim, New Zealand

## Contributors

- Roy Ratcliffe, Pioneering Software, United Kingdom
- Bennett Smith, Focal Shift LLC, United States
- Terry Tucker, Focal Shift LLC, United States
