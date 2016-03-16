//
//  PrintReportViewController.m
//  ActionSheetTest
//
//  Created by Andy Steinmann on 3/16/16.
//  Copyright © 2016 Andy Steinmann. All rights reserved.
//

#import "PrintReportViewController.h"

@interface PrintReportViewController()
@property (nonatomic, strong) IBOutlet UILabel *label;

@end

@implementation PrintReportViewController

-(void)viewDidLoad
{
    self.label.text = self.displayType;
}

-(IBAction)hideButtonTouched:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
