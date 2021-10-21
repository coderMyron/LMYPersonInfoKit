//
//  LMYPersonPreferenceViewController.h
//  CTMediatorTest
//
//  Created by kaola on 2021/10/21.
//

#import <UIKit/UIKit.h>

typedef void(^ ResultBlock)(BOOL isLike);

NS_ASSUME_NONNULL_BEGIN

@interface LMYPersonPreferenceViewController : UIViewController

@property (nonatomic, strong) NSString *remind;
@property (nonatomic, strong) ResultBlock myBlock;

@end

NS_ASSUME_NONNULL_END
