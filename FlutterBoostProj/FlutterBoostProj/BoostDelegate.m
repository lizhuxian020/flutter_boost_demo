//
//  BoostDelegate.m
//  FlutterBoostProj
//
//  Created by zzer on 2022/10/19.
//

#import "BoostDelegate.h"

@implementation BoostDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.resultTable = [NSMutableDictionary new];
    }
    return self;
}

- (void)pushNativeRoute:(NSString *)pageName arguments:(NSDictionary *)arguments {
    //可以用参数来控制是push还是pop
    bool isPresent = [arguments[@"isPresent"] boolValue];
    bool isAnimated = [arguments[@"isAnimated"] boolValue];
    //这里根据pageName来判断生成哪个vc，这里给个默认的了
    UIViewController *targetViewController = [[UIViewController alloc] init];

    if(isPresent){
        [self.navigationController presentViewController:targetViewController animated:isAnimated completion:nil];
    }else{
        [self.navigationController pushViewController:targetViewController animated:isAnimated];
    }
}

- (void)pushFlutterRoute:(FlutterBoostRouteOptions *)options {
    FBFlutterViewContainer *vc = [FBFlutterViewContainer new];
    [vc setName:options.pageName uniqueId:options.uniqueId params:options.arguments opaque:options.opaque];
    
    //可以用参数来控制是push还是pop
    bool isPresent = [options.arguments[@"isPresent"] boolValue];
    bool isAnimated = [options.arguments[@"isAnimated"] boolValue];
    
    self.resultTable[options.pageName] = options.onPageFinished;
    
    if(isPresent){
        [self.navigationController presentViewController:vc animated:isAnimated completion:nil];
    }else{
        [self.navigationController pushViewController:vc animated:isAnimated];
    }
}

- (void)popRoute:(FlutterBoostRouteOptions *)options {
    
}

@end
