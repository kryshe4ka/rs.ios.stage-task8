//
//  AppDelegate.h
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

#import <UIKit/UIKit.h>
#import "RSSchool_T8-Swift.h"
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (strong, nonatomic) UINavigationController * navigationController;
@property (strong, nonatomic) ViewController * rootVC;
@property (strong, nonatomic) DrawingsViewController * secondViewController;

@end

