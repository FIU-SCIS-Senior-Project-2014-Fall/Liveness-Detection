//
//  LDMainMenuViewController.m
//  Liveness-Detection
//
//  Created by Christopher Choitz on 9/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "LDMainMenuViewController.h"

@interface LDMainMenuViewController ()

@end

@implementation LDMainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)enrollImage:(id)sender {
    // Enroll an image if successful log will show the response
    // if it's unsuccessful log will also show why unsuccessful.
    
    // The image will be stored in gallery1 and this gallery will be used
    // later on to compare other images to.
    [KairosSDK imageCaptureEnrollWithSubjectId:@"15"
                                   galleryName:@"gallery1"
                                       success:^(NSDictionary *response, UIImage *image) {
                                           NSLog(@"%@", response);
                                       } failure:^(NSDictionary *response, UIImage *image) {
                                           NSLog(@"%@", response);
                                       }];
    
}

- (IBAction)recognizeImage:(id)sender {
    // Recognize an image from gallery that was used in the enroll method
    
    [KairosSDK imageCaptureRecognizeWithThreshold:@".75"
                                      galleryName:@"gallery1"
                                          success:^(NSDictionary *response, UIImage *image) {
                                              NSLog(@"%@", response);
                                          } failure:^(NSDictionary *response, UIImage *image) {
                                              NSLog(@"%@", response);
                                          }];
}

- (IBAction)detect:(id)sender {
}
@end
