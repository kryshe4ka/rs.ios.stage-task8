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

@property (nonatomic, strong) UIColor * firstColor;
@property (nonatomic, strong) UIColor * secondColor;
@property (nonatomic, strong) UIColor * thirdColor;
@property int counter;
@property (nonatomic, strong) NSArray<UIColor *> * colors;

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
    self.counter = 0;
    self.firstColor = [UIColor colorNamed:@"Black"];
    self.secondColor = [UIColor colorNamed:@"Black"];
    self.thirdColor = [UIColor colorNamed:@"Black"];
    
    self.colors = @[[UIColor colorNamed:@"KLRed"], [UIColor colorNamed:@"KLDarkPurple"], [UIColor colorNamed:@"KLGreen"], [UIColor colorNamed:@"KLGray"], [UIColor colorNamed:@"KLLightPurple"], [UIColor colorNamed:@"KLOrange"], [UIColor colorNamed:@"KLYellow"], [UIColor colorNamed:@"KLSky"], [UIColor colorNamed:@"KLPink"], [UIColor colorNamed:@"KLDarkGray"], [UIColor colorNamed:@"KLDarkGreen"], [UIColor colorNamed:@"KLBrown"]];
    
    [self createColorButtons];
    
}
-(void)createColorButtons {
    int step = 0;
    for (int i=0; i < 12; i++) {
        KLButton * colorButton;
        if (i == 6) {
            step = 0;
        }
        if (i < 6) {
            colorButton = [[KLButton alloc] initWithFrame:CGRectMake(17+step, 92, 40, 40)];
        } else {
            colorButton = [[KLButton alloc] initWithFrame:CGRectMake(17+step, 152, 40, 40)];
        }
        [colorButton setUp];
        UIView * innerColorView = [[UIView alloc] initWithFrame:CGRectMake(8, 8, 24, 24)];
        innerColorView.backgroundColor = self.colors[i];
        innerColorView.layer.cornerRadius = 6;
        innerColorView.userInteractionEnabled = NO; // чтобы внутренняя вьюшка не захватывала на себя тап
        colorButton.tag = i;
        [colorButton addSubview:innerColorView];
        [self.view addSubview:colorButton];
        [colorButton addTarget:self action:@selector(pickColor:) forControlEvents:UIControlEventTouchUpInside];
        step += 60;
    }
}

-(void)pickColor:(KLButton*)sender {
    self.counter++;
    NSLog(@"%d", self.counter);
    
    switch (self.counter) {
        case 1:
            self.firstColor = self.colors[sender.tag];
            NSLog(@"%@", self.firstColor);
            break;
        case 2:
            self.secondColor = self.colors[sender.tag];
            NSLog(@"%@", self.secondColor);
            break;
        case 3:
            self.thirdColor = self.colors[sender.tag];
            NSLog(@"%@", self.thirdColor);
            self.counter = 0;
            break;
        default:
            self.counter = 0;
            break;
    }
}
- (void)hideContentController {
    [self.delegate didColorsSet: self.firstColor second:self.secondColor third:self.thirdColor];
   
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}
@end
