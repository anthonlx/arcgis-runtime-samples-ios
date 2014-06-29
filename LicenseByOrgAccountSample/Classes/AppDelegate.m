/*
 Copyright 2014 Esri
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "AppDelegate.h"
#import "ViewController.h"
#import "LicenseHelperConstants.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    //set client id.
    //this gives us Basic license level capabilites
    NSError *error = nil;
    BOOL valid = [AGSRuntimeEnvironment setClientID:kClientID error:&error];
    if (!valid) {
        NSLog(@"setClientID failed: %@", error.localizedDescription);
    }

    // Override point for customization after app launch
    [window setRootViewController:viewController];
    [window makeKeyAndVisible];
}

@end
