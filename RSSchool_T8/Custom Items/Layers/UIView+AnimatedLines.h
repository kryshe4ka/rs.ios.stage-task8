//
//  UIView+AnimatedLines.h
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView(AnimatedLines)

-(void)animateLinesWithColor:(CGColorRef)lineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration;
@end

NS_ASSUME_NONNULL_END
