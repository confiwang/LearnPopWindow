//
//  AppDelegate.m
//  LearnPopWindow
//
//  Created by confiwang on 2017/7/14.
//  Copyright © 2017年 TencentJobs. All rights reserved.
//

#import "AppDelegate.h"

#import "CFNormalPopWindowController.h"

@interface AppDelegate ()

@property (nonatomic, strong) CFNormalPopWindowController *normalPopWindowController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    //展示自定义的Window
    self.normalPopWindowController = [[CFNormalPopWindowController alloc] initWithWindowNibName:@"CFNormalPopWindowController"];
    
    [self.normalPopWindowController showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
