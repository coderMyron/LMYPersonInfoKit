//
//  CTMediator+LMYPersonPreference.h
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (LMYPersonPreference)

-(UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(void(^)(BOOL islike))block;

@end

NS_ASSUME_NONNULL_END
