//
//  BoostDelegate.h
//  FlutterBoostProj
//
//  Created by zzer on 2022/10/19.
//

#import <UIKit/UIKit.h>
#import "FlutterBoostDelegate.h"
#import "FBFlutterViewContainer.h"
NS_ASSUME_NONNULL_BEGIN

@interface BoostDelegate : NSObject<FlutterBoostDelegate>

@property (nonatomic, strong) UINavigationController *navigationController;

@property (nonatomic, strong) NSMutableDictionary *resultTable;

@end

NS_ASSUME_NONNULL_END
