//
//  UIView+AnimatedLines.h
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView(AnimatedLines)

-(void)animateHeadLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration;

-(void)animatePlanetLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration;

-(void)animateTreeLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration;

-(void)animateLandscapeLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration;

@end

NS_ASSUME_NONNULL_END
