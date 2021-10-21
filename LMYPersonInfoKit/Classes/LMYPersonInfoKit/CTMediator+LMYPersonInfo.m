//
//  CTMediator+LMYPersonInfo.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "CTMediator+LMYPersonInfo.h"

@implementation CTMediator (LMYPersonInfo)


- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    
    return [self performTarget:@"LMYPersonInfoViewController" action:@"PersonInfoViewController" params:dic shouldCacheTarget:NO];
}

@end
