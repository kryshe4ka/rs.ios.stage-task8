//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

#import "ViewController.h"
#import "KLButton.h"
#import "KLView.h"

@interface ViewController ()

@property (nonatomic, strong) KLButton * drawButton;
@property (nonatomic, strong) KLButton * shareButton;
@property (nonatomic, strong) KLButton * openTimerButton;
@property (nonatomic, strong) KLButton * openPaletteButton;
@property (nonatomic, strong) KLView * canvas;


@end

@implementation ViewController

@synthesize secondViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    //set the background color of the view
    self.view.backgroundColor = [UIColor whiteColor];
    //set the title of the navigation view
    self.navigationItem.title = @"Artist";
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    //create a right side button in the navigation bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(nextScreen:)];
    
    

    // устанавливаем шрифт и цвет заголовку в таббаре
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Montserrat-Regular" size:17], NSFontAttributeName,
                                                                    [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0], NSForegroundColorAttributeName, nil] ];
    
    // устанавливаем шрифт и цвет правой кнопке в таббаре
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Montserrat-Regular" size:17], NSFontAttributeName,
        [UIColor colorWithRed:33/255.0 green:176/255.0 blue:142/255.0 alpha:1.0], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    
    
    // создаем кнопки нужных размеров
    self.drawButton = [[KLButton alloc] initWithFrame:CGRectMake(243, 452, 91, 32)];
    [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    self.openPaletteButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 452, 163, 32)];
    [self.openPaletteButton setTitle:@"Open Palette" forState:UIControlStateNormal];
    self.openTimerButton = [[KLButton alloc] initWithFrame:CGRectMake(20, 504, 151, 32)];
    [self.openTimerButton setTitle:@"Open Timer" forState:UIControlStateNormal];
    self.shareButton = [[KLButton alloc] initWithFrame:CGRectMake(239, 504, 95, 32)];
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];

    // настраиваем вид каждой кнопки и добавляем ее на вью
    NSArray * buttons = [[NSArray alloc] initWithObjects: self.drawButton, self.openPaletteButton, self.openTimerButton, self.shareButton, nil];
    for (KLButton * button in buttons) {
        [button setUp];
        [self.view addSubview: button];
    }
    
    
    self.canvas = [[KLView alloc] initWithFrame:CGRectMake(38, 102, 300, 300)];
    [self.canvas setUp];
    [self.view addSubview: self.canvas];
    
    
    
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
        //if the second view controller doesn't exists create it
        if(self.secondViewController == nil){
            DrawingsViewController *secondView = [[DrawingsViewController alloc] init];
            self.secondViewController = secondView;
        }
    }
    //tell the navigation controller to push a new view into the stack
    [self.navigationController pushViewController:self.secondViewController animated:YES];
}

@end
