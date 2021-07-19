//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

#import "ViewController.h"
#import "KLButton.h"
#import "KLView.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+AnimatedLines.h"
#import "PaletteViewController.h"
#import "RSSchool_T8-Swift.h"


@interface ViewController () <EventsDelegate, TimerDelegate>

@property (nonatomic, strong) KLButton * drawButton;
@property (nonatomic, strong) KLButton * shareButton;
@property (nonatomic, strong) KLButton * openTimerButton;
@property (nonatomic, strong) KLButton * openPaletteButton;
@property (nonatomic, strong) KLButton * resetButton;
@property (nonatomic, strong) KLView * canvas;
@property (nonatomic, strong) PaletteViewController * paletteViewController;
@property (nonatomic, strong) DrawingsViewController * drawinsViewController;

@property (nonatomic, strong) TimeViewController * timeVCSWIFT;


@property (nonatomic, strong) NSTimer * timer;
@property float seconds;
@property float animationDuration;


@property (nonatomic, strong) UIImage *imageVC;
@property (nonatomic, strong) UIGraphicsImageRenderer *rendererVC;


@property (nonatomic, strong) KLButton * saveButton;

@property (nonatomic, strong) UIColor * firstColor;
@property (nonatomic, strong) UIColor * secondColor;
@property (nonatomic, strong) UIColor * thirdColor;


@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    //set the background color of the view
    self.view.backgroundColor = [UIColor whiteColor];
    self.firstColor = [UIColor colorNamed:@"Black"];
    self.secondColor = [UIColor colorNamed:@"Black"];
    self.thirdColor = [UIColor colorNamed:@"Black"];
    self.animationDuration = 1.0; // по дефолту 1 секунда на отрисовку
    
    //set the title of the navigation view
    self.navigationItem.title = @"Artist";
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    //create a right side button in the navigation bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(nextScreen:)];
    
    // устанавливаем шрифт и цвет заголовку в таббаре
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Montserrat-Regular" size:17], NSFontAttributeName, [UIColor colorNamed:@"Black"], NSForegroundColorAttributeName, nil] ];
    // устанавливаем шрифт и цвет правой кнопке в таббаре
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Montserrat-Regular" size:17], NSFontAttributeName,
        [UIColor colorNamed:@"Light Green Sea"], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    
    // создаем кнопки нужных размеров
    self.resetButton = [[KLButton alloc] initWithFrame:CGRectMake(243, 452, 91, 32)];
    [self.resetButton setTitle:@"Reset" forState:UIControlStateNormal];
    [self.resetButton addTarget:self action:@selector(reset:) forControlEvents:UIControlEventTouchUpInside];
    self.resetButton.hidden = YES;
    
    
    self.drawButton = [[KLButton alloc] initWithFrame:CGRectMake(243, 452, 91, 32)];
    [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    [self.drawButton addTarget:self action:@selector(draw:) forControlEvents:UIControlEventTouchUpInside];
    
    self.openPaletteButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 452, 163, 32)];
    [self.openPaletteButton setTitle:@"Open Palette" forState:UIControlStateNormal];
    [self.openPaletteButton addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    
    self.openTimerButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 504, 151, 32)];
    [self.openTimerButton setTitle:@"Open Timer" forState:UIControlStateNormal];
    [self.openTimerButton addTarget:self action:@selector(openTimer:) forControlEvents:UIControlEventTouchUpInside];
    
    self.shareButton = [[KLButton alloc] initWithFrame:CGRectMake(239, 504, 95, 32)];
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    self.shareButton.enabled = NO;
    self.shareButton.layer.opacity = 0.5; // кнопка в задизейбленном состоянии
    [self.shareButton addTarget:self action:@selector(shareImage:) forControlEvents:UIControlEventTouchUpInside];

    // настраиваем вид каждой кнопки и добавляем ее на вью
    NSArray * buttons = [[NSArray alloc] initWithObjects: self.drawButton, self.openPaletteButton, self.openTimerButton, self.shareButton, self.resetButton, nil];
    for (KLButton * button in buttons) {
        [button setUp];
        [self.view addSubview: button];
    }
    
    self.canvas = [[KLView alloc] initWithFrame:CGRectMake(38, 102, 300, 300)];
    [self.canvas setUp];
    [self.view addSubview: self.canvas];
    
    self.paletteViewController = [[PaletteViewController alloc] init];
    [self addChildViewController:self.paletteViewController];
    self.paletteViewController.delegate = self;
    [self.paletteViewController setUp];
    
    self.timeVCSWIFT = [[TimeViewController alloc] init];
    [self addChildViewController:self.timeVCSWIFT];
    self.timeVCSWIFT.delegate = self;
    [self.timeVCSWIFT setUp];
    
    
    self.drawinsViewController = [[DrawingsViewController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.toolbarHidden = YES;
    [super viewWillAppear:animated];
}

-(void)nextScreen:(id) sender {
    //get reference to the button that requested the action
    UIBarButtonItem *myButton = sender;
    //check which button it is, if you have more than one button on the screen
        //you must check before taking necessary action
    if([myButton.title isEqualToString:@"Drawings"]){
        NSLog(@"Clicked on the bar button");
    }
    //tell the navigation controller to push a new view into the stack
    [self.navigationController pushViewController:self.drawinsViewController animated:YES];

}
-(void)shareImage:(id)sender {
    self.imageVC = [self.canvas asImage];
    // вызываем активити окно
    NSArray *images = @[self.imageVC];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:images applicationActivities:nil];
    activityVC.excludedActivityTypes = @[];
    activityVC.popoverPresentationController.sourceView = self.view;
    activityVC.popoverPresentationController.sourceRect = CGRectMake(self.view.bounds.size.width/2, self.view.bounds.size.height/4, 0, 0);
    [self presentViewController:activityVC animated:YES completion:nil];
}

-(void)draw:(id) sender {
    // экран Artist переходит в состояние draw
    self.openPaletteButton.layer.opacity = 0.5;
    self.openTimerButton.layer.opacity = 0.5;
    self.drawButton.layer.opacity = 0.5;
    self.drawButton.enabled = NO;
    
    // создание таймера
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01  target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
    self.seconds = self.animationDuration;
    // экран Artist переходит в состояние draw
    self.openPaletteButton.enabled = NO;
    self.openTimerButton.enabled = NO;
    
    [self.canvas animateLinesWithColor:self.firstColor.CGColor withSecondColor:self.secondColor.CGColor withThirdColor:self.thirdColor.CGColor andLineWidth:1 animationDuration:self.animationDuration];
}

- (void)updateTimer:(NSTimer *)theTimer {
    if (self.seconds>0) {
        self.seconds -= 0.01;
    } else {
        [self.timer invalidate];
        NSLog(@"Timer end");
        // экран Artist переходит в состояние done
        self.drawButton.hidden = YES;
        self.resetButton.hidden = NO;
        self.shareButton.layer.opacity = 1;
        self.shareButton.enabled = YES;
    }
}
-(void)reset:(id)sender {
    // экран Artist переходит в состояние idle
    self.openPaletteButton.layer.opacity = 1;
    self.openTimerButton.layer.opacity = 1;
    self.drawButton.layer.opacity = 1;
    self.shareButton.layer.opacity = 0.5;
    self.openPaletteButton.enabled = YES;
    self.openTimerButton.enabled = YES;
    self.drawButton.hidden = NO;
    self.resetButton.hidden = YES;
    self.shareButton.enabled = NO;
    self.drawButton.enabled = YES;
    
    // очищаем canvas
    [self.canvas.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
}

-(void)selectColor:(id)sender {
    [self.view addSubview:self.paletteViewController.view];
    [self.paletteViewController didMoveToParentViewController:self];
    // кнопка save
    self.saveButton = [[KLButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32)];
    [self.saveButton setTitle:@"Save" forState:UIControlStateNormal];
    [self.saveButton addTarget:self action:@selector(hidePalette) forControlEvents:UIControlEventTouchUpInside];
    [self.saveButton setUp];
    [self.paletteViewController.view addSubview:self.saveButton];
}

- (void)didColorsSet:(UIColor *)firstColor second:(UIColor *)secondColor third:(UIColor *)thirdColor {
    self.firstColor = firstColor;
    self.secondColor = secondColor;
    self.thirdColor = thirdColor;
}


-(void)openTimer:(id) sender {
    [self.view addSubview:self.timeVCSWIFT.view];
    [self.timeVCSWIFT didMoveToParentViewController:self];
    
    self.saveButton = [[KLButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32)];
    [self.saveButton setTitle:@"Save" forState:UIControlStateNormal];
    
    [self.saveButton addTarget:self action:@selector(hideTimer) forControlEvents:UIControlEventTouchUpInside];
    
    [self.saveButton setUp];
    [self.timeVCSWIFT.view addSubview:self.saveButton];
}

-(void) hidePalette {
    [self.paletteViewController hideContentController];
}
-(void) hideTimer {
    [self.timeVCSWIFT onSaveButtonTap];
    [self.timeVCSWIFT hideContentController];
}
- (void)didTimeSet:(float) time {
    self.animationDuration = time;
}

@end
