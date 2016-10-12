//  AMPCustomTableViewController.m
//  AmpiriSDKDemoApp
//
//  Created by Glispa GmbH on 2/15/16.
//  Copyright © 2016 Glispa GmbH All rights reserved.
//

#import "AMPCustomTableViewController.h"
#import "NativeBannerView.h"


static NSString *const kAMPNativeLocationControlAdUnitId = @"7f900c7d-7ce3-4190-8e93-310053e70ca2";

@interface AMPCustomTableViewController ()
@property (strong, nonatomic) AMPTableViewStreamAdapter *adapter;
@end

@implementation AMPCustomTableViewController


- (IBAction)loadClicked:(id)sender {
    self.loadButton.enabled = NO;
    self.adapter = [[AmpiriSDK sharedSDK] addLocationControlToTableView:self.tableView
                                          parentViewController:self
                                          adUnitId:kAMPNativeLocationControlAdUnitId
                                          adViewClassForRendering:[NativeBannerView class]];

}
@end
