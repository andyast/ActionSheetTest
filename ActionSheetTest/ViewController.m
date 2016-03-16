//
//  ViewController.m
//  ActionSheetTest
//
//  Created by Andy Steinmann on 3/16/16.
//  Copyright © 2016 Andy Steinmann. All rights reserved.
//

#import "ViewController.h"
#import "PrintReportViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)launchButtonTouched:(id)sender
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@""
                                 message:@""
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    
    UIAlertAction* fullReport = [UIAlertAction
                                 actionWithTitle:@"Print Full Report"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action)
                                 {
                                     [self printFullReport];
                                     
                                 }];
    
    [alert addAction:fullReport];
    
    
    UIAlertAction* selectedQuestions = [UIAlertAction
                                        actionWithTitle:@"Print Only Selected Questions"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action)
                                        {
                                            [self printSelectedQuestionsOnly];
                                            
                                        }];
    
    [alert addAction:selectedQuestions];
    
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"Cancel", @"Alert button title")
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                             
                                                         }
                                   ];
    
    [alert addAction:cancelAction];
    
    [self setModalPresentationStyle:UIModalPresentationPopover];
    [alert.popoverPresentationController setSourceView:self.view];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}


-(void)printFullReport
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"PrintReportStoryboard" bundle:nil];
    PrintReportViewController *previewer = [sb instantiateInitialViewController];
    previewer.displayType = @"Full Report";
    [self presentViewController:previewer animated:YES completion:nil];
}

-(void)printSelectedQuestionsOnly
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"PrintReportStoryboard" bundle:nil];
    PrintReportViewController *previewer = [sb instantiateInitialViewController];
    previewer.displayType = @"Selected Questions Only";
    [self presentViewController:previewer animated:YES completion:nil];
}


@end
