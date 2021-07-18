//
//  PaletteViewController.h
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EventsDelegate
@optional
// объявляем метод делегата
- (void)didFinishEvent:(UIColor *)color;
@end

@protocol TimerDelegate
@optional
// объявляем метод делегата
- (void)didTimeSet:(float) time;
@end

@interface PaletteViewController : UIViewController

@property (weak, nonatomic) id<EventsDelegate> delegate;


-(void)setUp;
-(void)hideContentController;

@end

NS_ASSUME_NONNULL_END