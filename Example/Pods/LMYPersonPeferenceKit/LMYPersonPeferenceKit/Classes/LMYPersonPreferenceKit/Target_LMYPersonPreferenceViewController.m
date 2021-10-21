//
//  Target_PersonPreferenceViewController.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "Target_LMYPersonPreferenceViewController.h"
#import "LMYPersonPreferenceViewController.h"

@implementation Target_LMYPersonPreferenceViewController

-(UIViewController *)Action_PersonPreferenceViewController:(NSDictionary *)param{
    LMYPersonPreferenceViewController *preferenceVC = [[LMYPersonPreferenceViewController alloc] init];
    preferenceVC.remind = [param objectForKey:@"remind"];
    preferenceVC.myBlock = [param objectForKey:@"myBlock"];
    return preferenceVC;
}

@end
