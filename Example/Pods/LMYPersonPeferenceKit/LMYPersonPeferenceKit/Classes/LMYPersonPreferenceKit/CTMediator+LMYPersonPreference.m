//
//  CTMediator+LMYPersonPreference.m
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import "CTMediator+LMYPersonPreference.h"

@implementation CTMediator (LMYPersonPreference)

-(UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(void (^)(BOOL))block{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:remind forKey:@"remind"];
    [dic setValue:block forKey:@"myBlock"];
    
    return [self performTarget:@"LMYPersonPreferenceViewController" action:@"PersonPreferenceViewController" params:dic shouldCacheTarget:NO];
}

@end
