//
//  Action_LMYPersonInfoViewController.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "Target_LMYPersonInfoViewController.h"
#import "LMYPersonInfoViewController.h"

@implementation Target_LMYPersonInfoViewController

- (UIViewController *)Action_PersonInfoViewController:(NSDictionary *)param{
    LMYPersonInfoViewController *perInfo = [[LMYPersonInfoViewController alloc] init];
    perInfo.name = [param valueForKey:@"name"];
    perInfo.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return perInfo;
}
    

@end
