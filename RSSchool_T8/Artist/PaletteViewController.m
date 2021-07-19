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
@property (nonatomic, strong) NSMutableArray<KLButton *> * selectedColorButtonsArray;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation PaletteViewController

-(void)setUp {
    self.view.frame = CGRectMake(0, 333, 375, 383.5);
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
    self.selectedColorButtonsArray = [NSMutableArray arrayWithCapacity:3];
    
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

//-(void)

-(void)pickColor:(KLButton*)sender {
    
    if ([self.selectedColorButtonsArray containsObject:sender]) {
        self.counter--;
        sender.subviews[1].frame = CGRectMake(8, 8, 24, 24);
        
        if (self.firstColor == self.colors[sender.tag]) {
            self.firstColor = [UIColor colorNamed:@"Black"];

        } else if (self.secondColor == self.colors[sender.tag]) {
            self.secondColor = [UIColor colorNamed:@"Black"];

        } else {
            self.thirdColor = [UIColor colorNamed:@"Black"];
        }
        [self.selectedColorButtonsArray removeObject:sender];
        NSLog(@"%lu", (unsigned long)self.selectedColorButtonsArray.count);

    } else {
        self.counter++;
        
        switch (self.counter) {
            case 1:
                if (self.selectedColorButtonsArray.count > 1) {
                    self.selectedColorButtonsArray[0].subviews[1].frame = CGRectMake(8, 8, 24, 24);
                    [self.selectedColorButtonsArray removeObjectAtIndex:0];
                }
                self.firstColor = self.colors[sender.tag];
                sender.subviews[1].frame = CGRectMake(2, 2, 36, 36);
                //change view background color
                self.view.backgroundColor = self.colors[sender.tag];
                //retun default background color after 1 sec
                        if (self.timer.isValid) {
                            [self.timer invalidate];
                            
                        }
                        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                                      target:self
                                                                    selector:@selector(setDefaultBackgroundColor)
                                                                    userInfo:nil
                                                                     repeats:NO];
                
                [self.selectedColorButtonsArray insertObject:sender atIndex:0];
                break;
            case 2:
                if (self.selectedColorButtonsArray.count > 1) {
                    self.selectedColorButtonsArray[1].subviews[1].frame = CGRectMake(8, 8, 24, 24);
                    [self.selectedColorButtonsArray removeObjectAtIndex:1];
                }
                self.secondColor = self.colors[sender.tag];
                sender.subviews[1].frame = CGRectMake(2, 2, 36, 36);
                //change view background color
                self.view.backgroundColor = self.colors[sender.tag];
                //retun default background color after 1 sec
                        if (self.timer.isValid) {
                            [self.timer invalidate];
                            
                        }
                        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                                      target:self
                                                                    selector:@selector(setDefaultBackgroundColor)
                                                                    userInfo:nil
                                                                     repeats:NO];
                [self.selectedColorButtonsArray insertObject:sender atIndex:1];
                break;
            case 3:
                
                if (self.selectedColorButtonsArray.count > 2) {
                    self.selectedColorButtonsArray[2].subviews[1].frame = CGRectMake(8, 8, 24, 24);
                    [self.selectedColorButtonsArray removeObjectAtIndex:2];
                }
                self.thirdColor = self.colors[sender.tag];
                sender.subviews[1].frame = CGRectMake(2, 2, 36, 36);
                //change view background color
                self.view.backgroundColor = self.colors[sender.tag];
                //retun default background color after 1 sec
                        if (self.timer.isValid) {
                            [self.timer invalidate];
                            
                        }
                        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                                      target:self
                                                                    selector:@selector(setDefaultBackgroundColor)
                                                                    userInfo:nil
                                                                     repeats:NO];
                [self.selectedColorButtonsArray insertObject:sender atIndex:2];
                self.counter = 0;
                break;
            default:
                self.counter = 0;
                break;
        }
    }
    
    
    
}
- (void)setDefaultBackgroundColor {
    self.view.backgroundColor = UIColor.whiteColor;
}
- (void)hideContentController {
    [self.delegate didColorsSet: self.firstColor second:self.secondColor third:self.thirdColor];
   
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}
@end
