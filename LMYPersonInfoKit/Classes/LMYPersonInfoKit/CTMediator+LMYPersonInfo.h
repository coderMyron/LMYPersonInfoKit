//
//  CTMediator+LMYPersonInfo.h
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (LMYPersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
