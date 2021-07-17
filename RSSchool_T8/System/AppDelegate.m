//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "RSSchool_T8-Swift.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow * window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController * rootVC = [[ViewController alloc] init];
    
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [window setRootViewController:self.navigationController];
            
    self.window = window;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
