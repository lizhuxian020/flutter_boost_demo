//
//  AppDelegate.m
//  FlutterBoostProj
//
//  Created by zzer on 2022/10/19.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "BoostDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    [self.window makeKeyAndVisible];
    
    BoostDelegate *b = [BoostDelegate new];
    [[FlutterBoost instance] setup:UIApplication.sharedApplication delegate:b callback:^(FlutterEngine *engine) {
            
    }];
    
    
    FBFlutterViewContainer *vc = FBFlutterViewContainer.new ;
    [vc setName:@"tab_friend" uniqueId:nil params:@{} opaque:YES];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"hybrid" image:nil tag:0];
    

    FBFlutterViewContainer *fvc = FBFlutterViewContainer.new ;

    [fvc setName:@"tab_friend" uniqueId:nil params:@{} opaque:YES];
    fvc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"flutter_tab" image:nil tag:1];


    UITabBarController *tabVC = [[UITabBarController alloc] init];
    tabVC.viewControllers = @[vc,fvc];


    UINavigationController *rvc = [[UINavigationController alloc] initWithRootViewController:tabVC];


    self.window.rootViewController = rvc;
    
    return YES;
}



@end
