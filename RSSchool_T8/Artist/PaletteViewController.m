//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import "PaletteViewController.h"
#import "ViewController.h"
#import "KLButton.h"


@interface PaletteViewController ()
@property (nonatomic, strong) KLButton * saveButton;


@end

@implementation PaletteViewController

-(void)setUp {
    self.view.frame = CGRectMake(0, 333, 375, 363.5);
    self.view.backgroundColor = [UIColor whiteColor];
    CATransition *transition = [CATransition animation];
    transition.duration = 1;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [self.view.layer addAnimation:transition forKey:nil];
    self.view.layer.cornerRadius = 40;
    self.view.layer.shadowColor = [UIColor colorNamed:@"Black"].CGColor;
    self.view.layer.shadowRadius = 2.0;
    self.view.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.view.layer.masksToBounds = NO;
    self.view.layer.shadowOpacity = 0.25f;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    KLButton * colorPick = [[KLButton alloc] initWithFrame:CGRectMake(30, 30, 30, 30)];
    [colorPick setUp];
    [self.view addSubview:colorPick];
    //UIColor * color = [UIColor redColor];
    [colorPick addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)saveColor:(id) sender {
    NSLog(@"saveButton tapped");
    [self willMoveToParentViewController:nil];
    [self removeFromParentViewController];
}

- (void)hideContentController {
   [self willMoveToParentViewController:nil];
   [self.view removeFromSuperview];
   [self removeFromParentViewController];
}

-(void)selectColor:(UIColor *)color {
    color = [UIColor redColor];
    [self.delegate didFinishEvent:color];
}

@end
