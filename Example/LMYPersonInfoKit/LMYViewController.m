//
//  LMYViewController.m
//  LMYPersonInfoKit
//
//  Created by coderMyron on 10/21/2021.
//  Copyright (c) 2021 coderMyron. All rights reserved.
//

#import "LMYViewController.h"
#import "CTMediator+LMYPersonInfo.h"

@interface LMYViewController ()

@end

@implementation LMYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIButton *personInfoButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:personInfoButton];
    personInfoButton.backgroundColor = [UIColor yellowColor];
    [personInfoButton setTitle:@"个人详情" forState:UIControlStateNormal];
    [personInfoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    personInfoButton.frame = CGRectMake((self.view.frame.size.width - 150) * 0.5, 200, 150, 50);
    [personInfoButton addTarget:self action:@selector(personInfoClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)personInfoClick{
    UIViewController *personVC = [[CTMediator sharedInstance] personInfoWithName:@"李四" age:18];
    [self.navigationController pushViewController:personVC animated:YES];
}



@end
