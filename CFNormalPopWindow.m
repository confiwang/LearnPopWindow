//
//  CFNormalPopWindow.m
//  LearnPopWindow
//
//  Created by confiwang on 2017/7/14.
//  Copyright © 2017年 TencentJobs. All rights reserved.
//

#import "CFNormalPopWindow.h"

@implementation CFNormalPopWindow

- (void)mouseDown:(NSEvent *)event {
    NSAlert *aAlert = [[NSAlert alloc] init];
    aAlert.messageText = @"confiwang";//标题
    aAlert.informativeText = @"Engineer";//详情
    
    [aAlert addButtonWithTitle:@"hello"];
    [aAlert addButtonWithTitle:@"bye"];
    
    //添加自定义的详情view
    NSView *accessoryView = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 300, 30)];
    NSButton *goToEatButton = [[NSButton alloc] initWithFrame:NSMakeRect(0, 0, 300, 30)];
    [goToEatButton setButtonType:NSSwitchButton];
    goToEatButton.title = @"Go to Eat Something";
    goToEatButton.state = NO;
    goToEatButton.action = @selector(goToEat:);
    [accessoryView addSubview:goToEatButton];
    
    aAlert.accessoryView = accessoryView;
    
    //展示模态的对话框
    [aAlert beginSheetModalForWindow:self
                   completionHandler:^(NSModalResponse returnCode) {
                       if (returnCode == NSAlertFirstButtonReturn) {
                           NSLog(@"Year!");
                       }

                   }];
}

- (IBAction)goToEat:(id)sender {
    if ([sender isKindOfClass:[NSButton class]]) {
        NSButton *button = (NSButton*)sender;
        NSLog(@"GOGOGO %ld", (long)button.state);
    }
}

@end
