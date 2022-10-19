//
//  ViewController.m
//  FlutterBoostProj
//
//  Created by zzer on 2022/10/19.
//

#import "ViewController.h"
#import <flutter_boost/FlutterBoost.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.redColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [FlutterBoost.instance open:@"" arguments:nil completion:^(BOOL) {
        NSLog(@"asd");
    }];
}


@end
