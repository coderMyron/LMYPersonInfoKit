//
//  LMYPersonPreferenceViewController.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "LMYPersonPreferenceViewController.h"

@interface LMYPersonPreferenceViewController ()

@end

@implementation LMYPersonPreferenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

-(void)setup{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *personLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 50)];
    [self.view addSubview:personLabel];
    personLabel.text = self.remind;
    personLabel.textColor = [UIColor blackColor];
    personLabel.font = [UIFont systemFontOfSize:18];
    
    
    UIButton *likeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:likeButton];
    likeButton.backgroundColor = [UIColor yellowColor];
    [likeButton setTitle:@"喜欢" forState:UIControlStateNormal];
    [likeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    likeButton.frame = CGRectMake((self.view.frame.size.width - 100) * 0.5, 200, 100, 50);
    [likeButton addTarget:self action:@selector(likeClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *dislikeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:dislikeButton];
    dislikeButton.backgroundColor = [UIColor yellowColor];
    [dislikeButton setTitle:@"不喜欢" forState:UIControlStateNormal];
    [dislikeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    dislikeButton.frame = CGRectMake((self.view.frame.size.width - 100) * 0.5, 270, 100, 50);
    [dislikeButton addTarget:self action:@selector(dislikeClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)likeClick{
    if (self.myBlock) {
        self.myBlock(YES);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dislikeClick{
    if (self.myBlock) {
        self.myBlock(NO);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
