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
- (void)didColorsSet:(UIColor *)firstColor second:(UIColor *)secondColor third:(UIColor*)thirdColor;
@end

@protocol TimerDelegate
@optional
// объявляем метод делегата
- (void)didTimeSet:(float) time;
@end

@protocol DrawingDelegate
@optional
// объявляем метод делегата
- (void)didImageSet:(int) imageNumber;
@end

@interface PaletteViewController : UIViewController

@property (weak, nonatomic) id<EventsDelegate> delegate;


-(void)setUp;
-(void)hideContentController;

@end

NS_ASSUME_NONNULL_END
