//
//  LMYPersonInfoViewController.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "LMYPersonInfoViewController.h"
#import "CTMediator+LMYPersonPreference.h"

@interface LMYPersonInfoViewController ()

@property(nonatomic, weak) UIButton *actionButton;

@end

@implementation LMYPersonInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

-(void)setup{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *personLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 50)];
    [self.view addSubview:personLabel];
    NSString *personText = [NSString stringWithFormat:@"%@今年%ld岁，还是个学生",self.name,self.age];
    personLabel.text = personText;
    personLabel.textColor = [UIColor blackColor];
    personLabel.font = [UIFont systemFontOfSize:18];
    
    
    UIButton *actionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:actionButton];
    self.actionButton = actionButton;
    actionButton.backgroundColor = [UIColor yellowColor];
    [actionButton setTitle:@"打分" forState:UIControlStateNormal];
    [actionButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    actionButton.frame = CGRectMake((self.view.frame.size.width - 150) * 0.5, 200, 150, 50);
    [actionButton addTarget:self action:@selector(preferenceClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView *lockImageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 300, 25, 25)];
    [self.view addSubview:lockImageView];
//    lockImageView.image = [UIImage imageNamed:@"touch_lock"];
    lockImageView.image = [self lmy_imgWithName:@"touch_lock" bundle:@"LMYPersonInfoKit" targetClass:[self class]];
    
}

-(void)preferenceClick{
    UIViewController *preferenceVC = [[CTMediator sharedInstance] personPreferenceWithRemind:@"喜欢吗" resultBlock:^(BOOL islike) {
        if (islike) {
            [self.actionButton setTitle:@"对方喜欢你" forState:UIControlStateNormal];
        }else{
            [self.actionButton setTitle:@"对方不喜欢你" forState:UIControlStateNormal];
        }
    }];

    [self.navigationController pushViewController:preferenceVC animated:YES];
}

- (UIImage *)lmy_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass{
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *curB = [NSBundle bundleForClass:targetClass];
    NSString *imgName = [NSString stringWithFormat:@"%@@%zdx.png", name,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundleName];
    NSString *path = [curB pathForResource:imgName ofType:nil inDirectory:dir];
    return path ? [UIImage imageWithContentsOfFile:path] : nil;
}

@end
