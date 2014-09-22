//
//  LDMainMenuViewController.h
//  Liveness-Detection
//
//  Created by Christopher Choitz on 9/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KairosSDK.h"

@interface LDMainMenuViewController : UIViewController

- (IBAction)enrollImage:(id)sender;
- (IBAction)recognizeImage:(id)sender;
- (IBAction)detect:(id)sender;


@end
