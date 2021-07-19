//
//  UIView+AnimatedLines.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import "UIView+AnimatedLines.h"

@implementation UIView(AnimatedLines)

-(void)animateHeadLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration
{
    CAShapeLayer* animateLayer = [CAShapeLayer layer];
        animateLayer.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
        animateLayer.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
        animateLayer.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
        animateLayer.lineWidth   = lineWidth;
        animateLayer.strokeEnd   = 0.0;
    
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];

    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(71.91, 43.24)];
    [bezierPath addLineToPoint: CGPointMake(85.59, 96.18)];
    [bezierPath addLineToPoint: CGPointMake(96.18, 116.47)];
    [bezierPath addLineToPoint: CGPointMake(111.62, 133.68)];
    [bezierPath addLineToPoint: CGPointMake(135.44, 153.53)];
    [bezierPath addLineToPoint: CGPointMake(156.18, 158.38)];
    [bezierPath addLineToPoint: CGPointMake(187.94, 142.94)];
    [bezierPath addLineToPoint: CGPointMake(211.76, 116.47)];
    [bezierPath addLineToPoint: CGPointMake(219.26, 105.88)];
    [bezierPath addLineToPoint: CGPointMake(219.26, 86.03)];
    [bezierPath addLineToPoint: CGPointMake(221.03, 62.21)];
    [bezierPath addLineToPoint: CGPointMake(210.44, 53.38)];
    [bezierPath addLineToPoint: CGPointMake(195.88, 56.03)];
    [bezierPath addLineToPoint: CGPointMake(186.18, 71.03)];
    [bezierPath addLineToPoint: CGPointMake(184.41, 91.32)];
    [bezierPath addLineToPoint: CGPointMake(187.94, 102.35)];
    [strokeColor setStroke];
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    [bezierPath stroke];
    
    animateLayer.path = bezierPath.CGPath;
    animateLayer.strokeColor = lineColor;
    
    [self.layer addSublayer:animateLayer];
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = duration;
        pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
        pathAnimation.autoreverses = NO;
    
    
// ------------------------
    CAShapeLayer* animateLayer2 = [CAShapeLayer layer];
        animateLayer2.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
        animateLayer2.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
        animateLayer2.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
        animateLayer2.lineWidth   = lineWidth;
        animateLayer2.strokeEnd   = 0.0;
    
    //// Color Declarations
//    UIColor* fillColor2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* strokeColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
//    //// head-frame.svg Group
//    //// Rectangle Drawing
//    UIBezierPath * rectanglePath2 = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 340, 340)];
//    [fillColor2 setFill];
//    [rectanglePath2 fill];
    
    ////// Bezier 2 Drawing
    UIBezierPath * bezier2Path = [UIBezierPath new];
    [bezier2Path moveToPoint: CGPointMake(180, 105.88)];
    [bezier2Path addLineToPoint: CGPointMake(172.5, 104.56)];
    [bezier2Path addLineToPoint: CGPointMake(164.12, 106.32)];
    [bezier2Path addLineToPoint: CGPointMake(157.06, 107.21)];
    [bezier2Path addLineToPoint: CGPointMake(148.68, 106.32)];
    [bezier2Path addLineToPoint: CGPointMake(141.18, 105)];
    [bezier2Path addLineToPoint: CGPointMake(135.44, 104.56)];
    [bezier2Path addLineToPoint: CGPointMake(128.82, 105.88)];
    [bezier2Path addLineToPoint: CGPointMake(124.85, 107.65)];
    [bezier2Path addLineToPoint: CGPointMake(130.15, 109.85)];
    [bezier2Path addLineToPoint: CGPointMake(134.12, 112.94)];
    [bezier2Path addLineToPoint: CGPointMake(138.09, 117.35)];
    [bezier2Path addLineToPoint: CGPointMake(143.38, 119.56)];
    [bezier2Path addLineToPoint: CGPointMake(150, 120.44)];
    [bezier2Path addLineToPoint: CGPointMake(156.18, 119.56)];
    [bezier2Path addLineToPoint: CGPointMake(162.79, 120.44)];
    [bezier2Path addLineToPoint: CGPointMake(168.09, 119.56)];
    [bezier2Path addLineToPoint: CGPointMake(173.82, 116.03)];
    [bezier2Path addLineToPoint: CGPointMake(180, 108.97)];
    [bezier2Path addLineToPoint: CGPointMake(183.97, 103.68)];
    [bezier2Path addLineToPoint: CGPointMake(176.91, 102.79)];
    [bezier2Path addLineToPoint: CGPointMake(168.97, 101.91)];
    [bezier2Path addLineToPoint: CGPointMake(161.03, 100.15)];
    [bezier2Path addLineToPoint: CGPointMake(153.53, 99.71)];
    [bezier2Path addLineToPoint: CGPointMake(144.71, 101.03)];
    [bezier2Path addLineToPoint: CGPointMake(136.76, 102.79)];
    [bezier2Path addLineToPoint: CGPointMake(127.94, 103.68)];
    [bezier2Path addLineToPoint: CGPointMake(121.76, 103.24)];
    [bezier2Path addLineToPoint: CGPointMake(130.15, 97.94)];
    [bezier2Path addLineToPoint: CGPointMake(138.09, 92.21)];
    [bezier2Path addLineToPoint: CGPointMake(143.38, 89.12)];
    [bezier2Path addLineToPoint: CGPointMake(147.79, 90.44)];
    [bezier2Path addLineToPoint: CGPointMake(152.65, 92.21)];
    [bezier2Path addLineToPoint: CGPointMake(158.38, 91.32)];
    [bezier2Path addLineToPoint: CGPointMake(164.12, 90.44)];
    [bezier2Path addLineToPoint: CGPointMake(168.97, 90.44)];
    [bezier2Path addLineToPoint: CGPointMake(171.62, 92.21)];
    [bezier2Path addLineToPoint: CGPointMake(176.03, 96.62)];
    [bezier2Path addLineToPoint: CGPointMake(182.65, 100.59)];
    [strokeColor2 setStroke];
    bezier2Path.lineWidth = 1;
    bezier2Path.miterLimit = 4;
    bezier2Path.lineCapStyle = kCGLineCapRound;
    [bezier2Path stroke];
    
    
    animateLayer2.path = bezier2Path.CGPath;
    animateLayer2.strokeColor = secondLineColor;
    
    [self.layer addSublayer:animateLayer2];
    
    
    
// -----------------------
    CAShapeLayer* animateLayer3 = [CAShapeLayer layer];
        animateLayer3.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
        animateLayer3.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
        animateLayer3.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
        animateLayer3.lineWidth   = lineWidth;
        animateLayer3.strokeEnd   = 0.0;
    
    //// Color Declarations
    UIColor* strokeColor3 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
    ////// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(184.85, 108.09)];
        [bezier3Path addLineToPoint: CGPointMake(188.82, 113.38)];
        [bezier3Path addLineToPoint: CGPointMake(191.03, 119.12)];
        [bezier3Path addLineToPoint: CGPointMake(187.94, 127.06)];
        [bezier3Path addLineToPoint: CGPointMake(181.76, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(173.82, 140.74)];
        [bezier3Path addLineToPoint: CGPointMake(165.44, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(156.18, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(147.79, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(137.21, 134.56)];
        [bezier3Path addLineToPoint: CGPointMake(130.15, 142.94)];
        [bezier3Path addLineToPoint: CGPointMake(124.41, 153.97)];
        [bezier3Path addLineToPoint: CGPointMake(114.26, 147.79)];
        [bezier3Path addLineToPoint: CGPointMake(107.21, 138.97)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 131.03)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 142.94)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 168.09)];
        [bezier3Path addLineToPoint: CGPointMake(99.71, 183.09)];
        [bezier3Path addLineToPoint: CGPointMake(93.53, 193.24)];
        [bezier3Path addLineToPoint: CGPointMake(83.38, 200.74)];
        [bezier3Path addLineToPoint: CGPointMake(73.68, 206.91)];
        [bezier3Path addLineToPoint: CGPointMake(89.12, 212.65)];
        [bezier3Path addLineToPoint: CGPointMake(101.03, 220.15)];
        [bezier3Path addLineToPoint: CGPointMake(110.29, 232.5)];
        [bezier3Path addLineToPoint: CGPointMake(122.65, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(139.41, 263.82)];
        [bezier3Path addLineToPoint: CGPointMake(156.18, 269.56)];
        [bezier3Path addLineToPoint: CGPointMake(168.53, 269.56)];
        [bezier3Path addLineToPoint: CGPointMake(181.76, 262.5)];
        [bezier3Path addLineToPoint: CGPointMake(193.68, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(202.5, 228.97)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 214.85)];
        [bezier3Path addLineToPoint: CGPointMake(223.68, 209.12)];
        [bezier3Path addLineToPoint: CGPointMake(226.76, 209.12)];
        [bezier3Path addLineToPoint: CGPointMake(221.03, 195.44)];
        [bezier3Path addLineToPoint: CGPointMake(212.65, 170.29)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 150)];
        [bezier3Path addLineToPoint: CGPointMake(210.88, 129.26)];
        [bezier3Path addLineToPoint: CGPointMake(204.71, 138.97)];
        [bezier3Path addLineToPoint: CGPointMake(197.65, 146.03)];
        [bezier3Path addLineToPoint: CGPointMake(191.03, 153.97)];
        [bezier3Path addLineToPoint: CGPointMake(176.47, 168.09)];
        [bezier3Path addLineToPoint: CGPointMake(167.65, 180.88)];
        [bezier3Path addLineToPoint: CGPointMake(160.15, 199.85)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 222.79)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 247.94)];
        [bezier3Path addLineToPoint: CGPointMake(157.5, 263.82)];
        [strokeColor3 setStroke];
        bezier3Path.lineWidth = 1;
        bezier3Path.miterLimit = 4;
        bezier3Path.lineCapStyle = kCGLineCapRound;
        [bezier3Path stroke];
    
    animateLayer3.path = bezier3Path.CGPath;
    animateLayer3.strokeColor = thirdLineColor;
    
    [self.layer addSublayer:animateLayer3];

    
    [animateLayer addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer2 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer3 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];

    animateLayer.strokeEnd = 1.0;
    animateLayer2.strokeEnd = 1.0;
    animateLayer3.strokeEnd = 1.0;
}

-(void)animateTreeLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration
{
    CAShapeLayer* animateLayer = [CAShapeLayer layer];
        animateLayer.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
        animateLayer.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
        animateLayer.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
        animateLayer.lineWidth   = lineWidth;
        animateLayer.strokeEnd   = 0.0;
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(214.19, 74.76)];
        [bezierPath addCurveToPoint: CGPointMake(218, 65.5) controlPoint1: CGPointMake(216.57, 72.25) controlPoint2: CGPointMake(218, 69.02)];
        [bezierPath addCurveToPoint: CGPointMake(201.5, 51) controlPoint1: CGPointMake(218, 57.49) controlPoint2: CGPointMake(210.61, 51)];
        [bezierPath addCurveToPoint: CGPointMake(196.97, 51.55) controlPoint1: CGPointMake(199.93, 51) controlPoint2: CGPointMake(198.41, 51.19)];
        [bezierPath addCurveToPoint: CGPointMake(180.5, 38) controlPoint1: CGPointMake(196.41, 43.99) controlPoint2: CGPointMake(189.25, 38)];
        [bezierPath addCurveToPoint: CGPointMake(172.6, 39.77) controlPoint1: CGPointMake(177.64, 38) controlPoint2: CGPointMake(174.94, 38.64)];
        [bezierPath addCurveToPoint: CGPointMake(161.5, 36) controlPoint1: CGPointMake(169.67, 37.43) controlPoint2: CGPointMake(165.77, 36)];
        [bezierPath addCurveToPoint: CGPointMake(156.97, 36.55) controlPoint1: CGPointMake(159.93, 36) controlPoint2: CGPointMake(158.41, 36.19)];
        [bezierPath addCurveToPoint: CGPointMake(140.5, 23) controlPoint1: CGPointMake(156.41, 28.99) controlPoint2: CGPointMake(149.25, 23)];
        [bezierPath addCurveToPoint: CGPointMake(126.59, 29.7) controlPoint1: CGPointMake(134.65, 23) controlPoint2: CGPointMake(129.52, 25.67)];
        [bezierPath addCurveToPoint: CGPointMake(121.5, 29) controlPoint1: CGPointMake(124.98, 29.25) controlPoint2: CGPointMake(123.28, 29)];
        [bezierPath addCurveToPoint: CGPointMake(111.81, 31.77) controlPoint1: CGPointMake(117.88, 29) controlPoint2: CGPointMake(114.53, 30.03)];
        [bezierPath addCurveToPoint: CGPointMake(106.5, 31) controlPoint1: CGPointMake(110.14, 31.27) controlPoint2: CGPointMake(108.36, 31)];
        [bezierPath addCurveToPoint: CGPointMake(92.59, 37.7) controlPoint1: CGPointMake(100.65, 31) controlPoint2: CGPointMake(95.52, 33.67)];
        [bezierPath addCurveToPoint: CGPointMake(87.5, 37) controlPoint1: CGPointMake(90.98, 37.25) controlPoint2: CGPointMake(89.28, 37)];
        [bezierPath addCurveToPoint: CGPointMake(71, 51.5) controlPoint1: CGPointMake(78.39, 37) controlPoint2: CGPointMake(71, 43.49)];
        [bezierPath addCurveToPoint: CGPointMake(71.01, 52.02) controlPoint1: CGPointMake(71, 51.68) controlPoint2: CGPointMake(71, 51.85)];
        [bezierPath addCurveToPoint: CGPointMake(69.59, 53.7) controlPoint1: CGPointMake(70.49, 52.55) controlPoint2: CGPointMake(70.02, 53.11)];
        [bezierPath addCurveToPoint: CGPointMake(64.5, 53) controlPoint1: CGPointMake(67.98, 53.25) controlPoint2: CGPointMake(66.28, 53)];
        [bezierPath addCurveToPoint: CGPointMake(48, 67.5) controlPoint1: CGPointMake(55.39, 53) controlPoint2: CGPointMake(48, 59.49)];
        [bezierPath addCurveToPoint: CGPointMake(49.58, 73.71) controlPoint1: CGPointMake(48, 69.72) controlPoint2: CGPointMake(48.57, 71.83)];
        [bezierPath addCurveToPoint: CGPointMake(47, 81.5) controlPoint1: CGPointMake(47.95, 75.96) controlPoint2: CGPointMake(47, 78.63)];
        [bezierPath addCurveToPoint: CGPointMake(48.19, 86.92) controlPoint1: CGPointMake(47, 83.42) controlPoint2: CGPointMake(47.42, 85.25)];
        [bezierPath addCurveToPoint: CGPointMake(45, 95.5) controlPoint1: CGPointMake(46.19, 89.33) controlPoint2: CGPointMake(45, 92.29)];
        [bezierPath addCurveToPoint: CGPointMake(46.58, 101.71) controlPoint1: CGPointMake(45, 97.72) controlPoint2: CGPointMake(45.57, 99.83)];
        [bezierPath addCurveToPoint: CGPointMake(44, 109.5) controlPoint1: CGPointMake(44.95, 103.96) controlPoint2: CGPointMake(44, 106.63)];
        [bezierPath addCurveToPoint: CGPointMake(60.5, 124) controlPoint1: CGPointMake(44, 117.51) controlPoint2: CGPointMake(51.39, 124)];
        [bezierPath addCurveToPoint: CGPointMake(62.68, 123.88) controlPoint1: CGPointMake(61.24, 124) controlPoint2: CGPointMake(61.96, 123.96)];
        [bezierPath addCurveToPoint: CGPointMake(77.5, 132) controlPoint1: CGPointMake(65.36, 128.69) controlPoint2: CGPointMake(70.99, 132)];
        [bezierPath addCurveToPoint: CGPointMake(85.35, 130.26) controlPoint1: CGPointMake(80.34, 132) controlPoint2: CGPointMake(83.02, 131.37)];
        [bezierPath addCurveToPoint: CGPointMake(100.5, 139) controlPoint1: CGPointMake(87.89, 135.4) controlPoint2: CGPointMake(93.71, 139)];
        [bezierPath addCurveToPoint: CGPointMake(102.68, 138.88) controlPoint1: CGPointMake(101.24, 139) controlPoint2: CGPointMake(101.96, 138.96)];
        [bezierPath addCurveToPoint: CGPointMake(117.5, 147) controlPoint1: CGPointMake(105.36, 143.69) controlPoint2: CGPointMake(110.99, 147)];
        [bezierPath addCurveToPoint: CGPointMake(126, 144.93) controlPoint1: CGPointMake(120.61, 147) controlPoint2: CGPointMake(123.52, 146.24)];
        [bezierPath addCurveToPoint: CGPointMake(130.66, 146.6) controlPoint1: CGPointMake(127.43, 145.69) controlPoint2: CGPointMake(128.99, 146.26)];
        [bezierPath addCurveToPoint: CGPointMake(143.5, 152) controlPoint1: CGPointMake(133.68, 149.9) controlPoint2: CGPointMake(138.31, 152)];
        [bezierPath addCurveToPoint: CGPointMake(151.35, 150.26) controlPoint1: CGPointMake(146.34, 152) controlPoint2: CGPointMake(149.02, 151.37)];
        [bezierPath addCurveToPoint: CGPointMake(166.5, 159) controlPoint1: CGPointMake(153.89, 155.4) controlPoint2: CGPointMake(159.72, 159)];
        [bezierPath addCurveToPoint: CGPointMake(168.68, 158.88) controlPoint1: CGPointMake(167.24, 159) controlPoint2: CGPointMake(167.96, 158.96)];
        [bezierPath addCurveToPoint: CGPointMake(183.5, 167) controlPoint1: CGPointMake(171.36, 163.69) controlPoint2: CGPointMake(176.99, 167)];
        [bezierPath addCurveToPoint: CGPointMake(192, 164.93) controlPoint1: CGPointMake(186.61, 167) controlPoint2: CGPointMake(189.52, 166.24)];
        [bezierPath addCurveToPoint: CGPointMake(200.5, 167) controlPoint1: CGPointMake(194.48, 166.24) controlPoint2: CGPointMake(197.39, 167)];
        [bezierPath addCurveToPoint: CGPointMake(217, 152.5) controlPoint1: CGPointMake(209.61, 167) controlPoint2: CGPointMake(217, 160.51)];
        [bezierPath addCurveToPoint: CGPointMake(216.99, 151.99) controlPoint1: CGPointMake(217, 152.33) controlPoint2: CGPointMake(217, 152.16)];
        [bezierPath addCurveToPoint: CGPointMake(217.5, 152) controlPoint1: CGPointMake(217.16, 152) controlPoint2: CGPointMake(217.33, 152)];
        [bezierPath addCurveToPoint: CGPointMake(226, 149.93) controlPoint1: CGPointMake(220.61, 152) controlPoint2: CGPointMake(223.52, 151.24)];
        [bezierPath addCurveToPoint: CGPointMake(234.5, 152) controlPoint1: CGPointMake(228.48, 151.24) controlPoint2: CGPointMake(231.39, 152)];
        [bezierPath addCurveToPoint: CGPointMake(251, 137.5) controlPoint1: CGPointMake(243.61, 152) controlPoint2: CGPointMake(251, 145.51)];
        [bezierPath addCurveToPoint: CGPointMake(250.66, 134.56) controlPoint1: CGPointMake(251, 136.49) controlPoint2: CGPointMake(250.88, 135.51)];
        [bezierPath addCurveToPoint: CGPointMake(258, 122.5) controlPoint1: CGPointMake(255.09, 131.96) controlPoint2: CGPointMake(258, 127.53)];
        [bezierPath addCurveToPoint: CGPointMake(254.19, 113.23) controlPoint1: CGPointMake(258, 118.98) controlPoint2: CGPointMake(256.57, 115.75)];
        [bezierPath addCurveToPoint: CGPointMake(261, 101.5) controlPoint1: CGPointMake(258.32, 110.6) controlPoint2: CGPointMake(261, 106.33)];
        [bezierPath addCurveToPoint: CGPointMake(244.5, 87) controlPoint1: CGPointMake(261, 93.49) controlPoint2: CGPointMake(253.61, 87)];
        [bezierPath addCurveToPoint: CGPointMake(239.97, 87.55) controlPoint1: CGPointMake(242.93, 87) controlPoint2: CGPointMake(241.41, 87.19)];
        [bezierPath addCurveToPoint: CGPointMake(223.5, 74) controlPoint1: CGPointMake(239.41, 79.99) controlPoint2: CGPointMake(232.25, 74)];
        [bezierPath addCurveToPoint: CGPointMake(215.6, 75.77) controlPoint1: CGPointMake(220.64, 74) controlPoint2: CGPointMake(217.94, 74.64)];
        [bezierPath addCurveToPoint: CGPointMake(214.19, 74.76) controlPoint1: CGPointMake(215.15, 75.41) controlPoint2: CGPointMake(214.68, 75.08)];
        [bezierPath closePath];
        bezierPath.usesEvenOddFillRule = YES;
        [bezierPath addClip];
    
    animateLayer.path = bezierPath.CGPath;
    animateLayer.strokeColor = lineColor;
    
    [self.layer addSublayer:animateLayer];
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = duration;
        pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
        pathAnimation.autoreverses = NO;
    
    // ---------------------
    
    CAShapeLayer* animateLayer2 = [CAShapeLayer layer];
    animateLayer2.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer2.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer2.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer2.lineWidth   = lineWidth;
    animateLayer2.strokeEnd   = 0.0;
    
    //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(83, 259.5)];
        [bezier3Path addCurveToPoint: CGPointMake(144.5, 196.5) controlPoint1: CGPointMake(102.83, 253.67) controlPoint2: CGPointMake(142.9, 232.9)];
        [bezier3Path addCurveToPoint: CGPointMake(134.5, 149.5) controlPoint1: CGPointMake(146.1, 160.1) controlPoint2: CGPointMake(138.5, 150)];
        [bezier3Path moveToPoint: CGPointMake(226.5, 265)];
        [bezier3Path addCurveToPoint: CGPointMake(173, 236) controlPoint1: CGPointMake(208.17, 264) controlPoint2: CGPointMake(171.8, 256.8)];
        [bezier3Path addCurveToPoint: CGPointMake(184, 177.5) controlPoint1: CGPointMake(174.2, 215.2) controlPoint2: CGPointMake(180.83, 188.33)];
        [bezier3Path addCurveToPoint: CGPointMake(193.5, 165.5) controlPoint1: CGPointMake(186.17, 173.17) controlPoint2: CGPointMake(191.1, 164.7)];
        [bezier3Path moveToPoint: CGPointMake(159.5, 174)];
        [bezier3Path addCurveToPoint: CGPointMake(152, 223) controlPoint1: CGPointMake(158, 189.17) controlPoint2: CGPointMake(154.4, 220.2)];
        [bezier3Path moveToPoint: CGPointMake(164.5, 248.5)];
        [bezier3Path addCurveToPoint: CGPointMake(169.5, 177.5) controlPoint1: CGPointMake(164.5, 240.5) controlPoint2: CGPointMake(163.5, 192)];
        [bezier3Path moveToPoint: CGPointMake(146, 216.5)];
        [bezier3Path addCurveToPoint: CGPointMake(125.5, 245.5) controlPoint1: CGPointMake(133, 235.5) controlPoint2: CGPointMake(131.5, 240)];
        [strokeColor setStroke];
        bezier3Path.lineWidth = 1;
        bezier3Path.miterLimit = 4;
        bezier3Path.lineCapStyle = kCGLineCapRound;
        [bezier3Path stroke];
    
    animateLayer2.path = bezier3Path.CGPath;
    animateLayer2.strokeColor = secondLineColor;
    
    [self.layer addSublayer:animateLayer2];
    
    // ------------------
    CAShapeLayer* animateLayer3 = [CAShapeLayer layer];
    animateLayer3.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer3.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer3.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer3.lineWidth   = lineWidth;
    animateLayer3.strokeEnd   = 0.0;
    
    //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(100.5, 252.5)];
        [bezier4Path addCurveToPoint: CGPointMake(67, 257.81) controlPoint1: CGPointMake(92.5, 244) controlPoint2: CGPointMake(77.4, 244.61)];
        [bezier4Path moveToPoint: CGPointMake(40.5, 264)];
        [bezier4Path addCurveToPoint: CGPointMake(64.5, 257) controlPoint1: CGPointMake(43.83, 260.17) controlPoint2: CGPointMake(53.3, 253.4)];
        [bezier4Path addCurveToPoint: CGPointMake(75, 261) controlPoint1: CGPointMake(75.7, 260.6) controlPoint2: CGPointMake(76.17, 261.17)];
        [bezier4Path moveToPoint: CGPointMake(179, 249.5)];
        [bezier4Path addCurveToPoint: CGPointMake(202.5, 249.5) controlPoint1: CGPointMake(184, 246.73) controlPoint2: CGPointMake(195.7, 242.85)];
        [bezier4Path addCurveToPoint: CGPointMake(207.74, 255.5) controlPoint1: CGPointMake(204.78, 251.73) controlPoint2: CGPointMake(206.48, 253.74)];
        [bezier4Path moveToPoint: CGPointMake(211, 262.5)];
        [bezier4Path addCurveToPoint: CGPointMake(207.74, 255.5) controlPoint1: CGPointMake(211, 261.46) controlPoint2: CGPointMake(210.25, 258.99)];
        [bezier4Path moveToPoint: CGPointMake(207.74, 255.5)];
        [bezier4Path addCurveToPoint: CGPointMake(242.5, 257) controlPoint1: CGPointMake(219.33, 252.33) controlPoint2: CGPointMake(242.5, 248.2)];
        [bezier4Path addCurveToPoint: CGPointMake(225.5, 265) controlPoint1: CGPointMake(242.5, 265.8) controlPoint2: CGPointMake(226.83, 264.17)];
        [strokeColor setStroke];
        bezier4Path.lineWidth = 0.5;
        bezier4Path.miterLimit = 4;
        bezier4Path.lineCapStyle = kCGLineCapRound;
        [bezier4Path stroke];
    
    animateLayer3.path = bezier4Path.CGPath;
    animateLayer3.strokeColor = thirdLineColor;
    
    [self.layer addSublayer:animateLayer3];
    
    [animateLayer addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer2 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer3 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];

    animateLayer.strokeEnd = 1.0;
    animateLayer2.strokeEnd = 1.0;
    animateLayer3.strokeEnd = 1.0;
}

-(void)animateLandscapeLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration
{
    CAShapeLayer* animateLayer = [CAShapeLayer layer];
    animateLayer.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer.lineWidth   = lineWidth;
    animateLayer.strokeEnd   = 0.0;
    
    CAShapeLayer* animateLayer2 = [CAShapeLayer layer];
    animateLayer2.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer2.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer2.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer2.lineWidth   = lineWidth;
    animateLayer2.strokeEnd   = 0.0;
    
    CAShapeLayer* animateLayer3 = [CAShapeLayer layer];
    animateLayer3.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer3.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer3.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer3.lineWidth   = lineWidth;
    animateLayer3.strokeEnd   = 0.0;
    
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
    // 1
    //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(254, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(260.5, 136)];
        [bezierPath addLineToPoint: CGPointMake(273, 148.5)];
        [bezierPath addLineToPoint: CGPointMake(272, 132)];
        [bezierPath addLineToPoint: CGPointMake(269.5, 116.5)];
        [bezierPath addLineToPoint: CGPointMake(264.5, 103)];
        [bezierPath addLineToPoint: CGPointMake(260.5, 94.5)];
        [bezierPath addLineToPoint: CGPointMake(256.5, 87)];
        [bezierPath addLineToPoint: CGPointMake(250.5, 78.5)];
        [bezierPath addLineToPoint: CGPointMake(245.5, 78)];
        [bezierPath addLineToPoint: CGPointMake(243, 78)];
        [bezierPath addLineToPoint: CGPointMake(239, 78.5)];
        [bezierPath addLineToPoint: CGPointMake(235, 80)];
        [bezierPath addLineToPoint: CGPointMake(231.5, 78)];
        [bezierPath addLineToPoint: CGPointMake(228.5, 77)];
        [bezierPath addLineToPoint: CGPointMake(224.5, 78)];
        [bezierPath addLineToPoint: CGPointMake(219.5, 78)];
        [bezierPath addLineToPoint: CGPointMake(215, 80)];
        [bezierPath addLineToPoint: CGPointMake(212, 78.5)];
        [bezierPath addLineToPoint: CGPointMake(208, 77)];
        [bezierPath addLineToPoint: CGPointMake(204, 77)];
        [bezierPath addLineToPoint: CGPointMake(197, 77)];
        [bezierPath addLineToPoint: CGPointMake(190.5, 77)];
        [bezierPath addLineToPoint: CGPointMake(187.5, 78.5)];
        [bezierPath addLineToPoint: CGPointMake(181, 77)];
        [bezierPath addLineToPoint: CGPointMake(175, 77)];
        [bezierPath addLineToPoint: CGPointMake(171, 76)];
        [bezierPath addLineToPoint: CGPointMake(165.5, 78)];
        [bezierPath addLineToPoint: CGPointMake(162, 76)];
        [bezierPath addLineToPoint: CGPointMake(155, 76)];
        [bezierPath addLineToPoint: CGPointMake(160.5, 74.5)];
        [bezierPath addLineToPoint: CGPointMake(164, 71.5)];
        [bezierPath addLineToPoint: CGPointMake(165.5, 69.5)];
        [bezierPath addLineToPoint: CGPointMake(168.5, 67)];
        [bezierPath addLineToPoint: CGPointMake(171, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(175, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(182.5, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(188, 63.5)];
        [bezierPath addLineToPoint: CGPointMake(193, 60.5)];
        [bezierPath addLineToPoint: CGPointMake(195, 56.5)];
        [bezierPath addLineToPoint: CGPointMake(201.5, 55.5)];
        [bezierPath addLineToPoint: CGPointMake(205, 58)];
        [bezierPath addLineToPoint: CGPointMake(209, 56.5)];
        [bezierPath addLineToPoint: CGPointMake(213, 58)];
        [bezierPath addLineToPoint: CGPointMake(215, 54)];
        [bezierPath addLineToPoint: CGPointMake(219.5, 52)];
        [bezierPath addLineToPoint: CGPointMake(225.5, 52)];
        [bezierPath addLineToPoint: CGPointMake(215, 44.5)];
        [bezierPath addLineToPoint: CGPointMake(201.5, 37)];
        [bezierPath addLineToPoint: CGPointMake(184, 30)];
        [bezierPath addLineToPoint: CGPointMake(164, 26)];
        [bezierPath addLineToPoint: CGPointMake(148.5, 25)];
        [bezierPath addLineToPoint: CGPointMake(131.5, 26)];
        [bezierPath addLineToPoint: CGPointMake(115, 28.5)];
        [bezierPath addLineToPoint: CGPointMake(102, 33.5)];
        [bezierPath addLineToPoint: CGPointMake(90.5, 38.5)];
        [bezierPath addLineToPoint: CGPointMake(96, 41.5)];
        [bezierPath addLineToPoint: CGPointMake(100, 45.5)];
        [bezierPath addLineToPoint: CGPointMake(103, 51)];
        [bezierPath addLineToPoint: CGPointMake(103.5, 56.5)];
        [bezierPath addLineToPoint: CGPointMake(100, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(94.5, 69.5)];
        [bezierPath addLineToPoint: CGPointMake(90.5, 71.5)];
        [bezierPath addLineToPoint: CGPointMake(86, 71.5)];
        [bezierPath addLineToPoint: CGPointMake(79, 68.5)];
        [bezierPath addLineToPoint: CGPointMake(74, 64.5)];
        [bezierPath addLineToPoint: CGPointMake(70.5, 58)];
        [bezierPath addLineToPoint: CGPointMake(70.5, 52)];
        [bezierPath addLineToPoint: CGPointMake(58, 63)];
        [bezierPath addLineToPoint: CGPointMake(49.5, 73)];
        [bezierPath addLineToPoint: CGPointMake(42, 84.5)];
        [bezierPath addLineToPoint: CGPointMake(36.5, 95.5)];
        [bezierPath addLineToPoint: CGPointMake(35, 101.5)];
        [bezierPath addLineToPoint: CGPointMake(38.5, 101.5)];
        [bezierPath addLineToPoint: CGPointMake(42, 100.5)];
        [bezierPath addLineToPoint: CGPointMake(48.5, 104.5)];
        [bezierPath addLineToPoint: CGPointMake(54.5, 104.5)];
        [bezierPath addLineToPoint: CGPointMake(60.5, 109.5)];
        [bezierPath addLineToPoint: CGPointMake(64, 108.5)];
        [bezierPath addLineToPoint: CGPointMake(69, 111)];
        [bezierPath addLineToPoint: CGPointMake(66.5, 112)];
        [bezierPath addLineToPoint: CGPointMake(60.5, 113.5)];
        [bezierPath addLineToPoint: CGPointMake(55.5, 112.5)];
        [bezierPath addLineToPoint: CGPointMake(53.5, 113.5)];
        [bezierPath addLineToPoint: CGPointMake(49.5, 113.5)];
        [bezierPath addLineToPoint: CGPointMake(46.5, 113.5)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 115.5)];
        [bezierPath addLineToPoint: CGPointMake(42.5, 114.5)];
        [bezierPath addLineToPoint: CGPointMake(40.5, 114.5)];
        [bezierPath addLineToPoint: CGPointMake(35, 112)];
        [bezierPath addLineToPoint: CGPointMake(29.5, 114.5)];
        [bezierPath addLineToPoint: CGPointMake(27, 123)];
        [bezierPath addLineToPoint: CGPointMake(25, 149)];
        [bezierPath addLineToPoint: CGPointMake(29.5, 179)];
        [bezierPath addLineToPoint: CGPointMake(36.5, 172)];
        [bezierPath addLineToPoint: CGPointMake(42, 168)];
        [bezierPath addLineToPoint: CGPointMake(53.5, 155.5)];
        [bezierPath addLineToPoint: CGPointMake(64, 144)];
        [bezierPath moveToPoint: CGPointMake(254, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(243, 132)];
        [bezierPath moveToPoint: CGPointMake(254, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(252.17, 136)];
        [bezierPath addLineToPoint: CGPointMake(252.17, 147.5)];
        [bezierPath moveToPoint: CGPointMake(243, 132)];
        [bezierPath addLineToPoint: CGPointMake(231.5, 108.5)];
        [bezierPath addLineToPoint: CGPointMake(223, 101)];
        [bezierPath addLineToPoint: CGPointMake(215, 111)];
        [bezierPath addLineToPoint: CGPointMake(204, 123.5)];
        [bezierPath addLineToPoint: CGPointMake(199.5, 121)];
        [bezierPath addLineToPoint: CGPointMake(182.5, 139)];
        [bezierPath addLineToPoint: CGPointMake(168.5, 159.5)];
        [bezierPath moveToPoint: CGPointMake(243, 132)];
        [bezierPath addLineToPoint: CGPointMake(247, 139)];
        [bezierPath addLineToPoint: CGPointMake(252.17, 147.5)];
        [bezierPath moveToPoint: CGPointMake(168.5, 159.5)];
        [bezierPath addLineToPoint: CGPointMake(160.5, 150.5)];
        [bezierPath addLineToPoint: CGPointMake(140, 130.5)];
        [bezierPath addLineToPoint: CGPointMake(132.5, 111)];
        [bezierPath addLineToPoint: CGPointMake(128, 111)];
        [bezierPath addLineToPoint: CGPointMake(121.5, 101)];
        [bezierPath moveToPoint: CGPointMake(168.5, 159.5)];
        [bezierPath addLineToPoint: CGPointMake(168.5, 162)];
        [bezierPath addLineToPoint: CGPointMake(172, 165.5)];
        [bezierPath addLineToPoint: CGPointMake(179.25, 172.75)];
        [bezierPath moveToPoint: CGPointMake(121.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(110, 109.5)];
        [bezierPath addLineToPoint: CGPointMake(106.5, 116.5)];
        [bezierPath addLineToPoint: CGPointMake(95.5, 129)];
        [bezierPath addLineToPoint: CGPointMake(89.5, 126.5)];
        [bezierPath moveToPoint: CGPointMake(121.5, 101)];
        [bezierPath addLineToPoint: CGPointMake(117.5, 108.5)];
        [bezierPath addLineToPoint: CGPointMake(116, 116.5)];
        [bezierPath moveToPoint: CGPointMake(89.5, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(74, 146.5)];
        [bezierPath addLineToPoint: CGPointMake(64, 144)];
        [bezierPath moveToPoint: CGPointMake(89.5, 126.5)];
        [bezierPath addLineToPoint: CGPointMake(89.5, 139)];
        [bezierPath addLineToPoint: CGPointMake(91.5, 150.5)];
        [bezierPath moveToPoint: CGPointMake(64, 144)];
        [bezierPath addLineToPoint: CGPointMake(67.5, 150)];
        [bezierPath addLineToPoint: CGPointMake(69, 157)];
        [bezierPath addLineToPoint: CGPointMake(69, 166.5)];
        [bezierPath addLineToPoint: CGPointMake(74, 176)];
        [bezierPath moveToPoint: CGPointMake(186.5, 180)];
        [bezierPath addLineToPoint: CGPointMake(179.25, 172.75)];
        [bezierPath moveToPoint: CGPointMake(263.5, 167.5)];
        [bezierPath addLineToPoint: CGPointMake(254, 150.5)];
        [bezierPath addLineToPoint: CGPointMake(252.17, 147.5)];
        [bezierPath moveToPoint: CGPointMake(179.25, 172.75)];
        [bezierPath addLineToPoint: CGPointMake(193, 168)];
        [bezierPath addLineToPoint: CGPointMake(194.16, 169.5)];
        [bezierPath moveToPoint: CGPointMake(201.5, 179)];
        [bezierPath addLineToPoint: CGPointMake(194.16, 169.5)];
        [bezierPath moveToPoint: CGPointMake(194.16, 169.5)];
        [bezierPath addLineToPoint: CGPointMake(201.5, 166.5)];
        [bezierPath addLineToPoint: CGPointMake(208, 169.5)];
        [bezierPath addLineToPoint: CGPointMake(218, 176)];
        [bezierPath addLineToPoint: CGPointMake(228.5, 180)];
        [bezierPath addLineToPoint: CGPointMake(237, 187)];
        [bezierPath addLineToPoint: CGPointMake(243, 188.5)];
        [bezierPath addLineToPoint: CGPointMake(258.5, 200.5)];
        [bezierPath moveToPoint: CGPointMake(113, 141.5)];
        [bezierPath addLineToPoint: CGPointMake(113, 133)];
        [bezierPath addLineToPoint: CGPointMake(114.5, 123.5)];
        [strokeColor setStroke];
        bezierPath.lineWidth = 1;
        bezierPath.miterLimit = 4;
        bezierPath.lineCapStyle = kCGLineCapRound;
        [bezierPath stroke];
    
    //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(40.5, 206)];
        [bezier2Path addLineToPoint: CGPointMake(55, 206)];
        [bezier2Path addLineToPoint: CGPointMake(69, 202.5)];
        [bezier2Path addLineToPoint: CGPointMake(86.5, 193)];
        [bezier2Path addLineToPoint: CGPointMake(103.5, 188)];
        [bezier2Path addLineToPoint: CGPointMake(119.5, 194.5)];
        [bezier2Path addLineToPoint: CGPointMake(132.25, 200.25)];
        [bezier2Path moveToPoint: CGPointMake(145, 206)];
        [bezier2Path addLineToPoint: CGPointMake(132.25, 200.25)];
        [bezier2Path moveToPoint: CGPointMake(132.25, 200.25)];
        [bezier2Path addLineToPoint: CGPointMake(145, 196.5)];
        [bezier2Path addLineToPoint: CGPointMake(155, 198)];
        [bezier2Path addLineToPoint: CGPointMake(164.5, 200.25)];
        [bezier2Path addLineToPoint: CGPointMake(178, 202.5)];
        [bezier2Path addLineToPoint: CGPointMake(200, 210)];
        [bezier2Path moveToPoint: CGPointMake(190.5, 212.5)];
        [bezier2Path addLineToPoint: CGPointMake(203, 210)];
        [bezier2Path addLineToPoint: CGPointMake(213.5, 204.5)];
        [bezier2Path addLineToPoint: CGPointMake(227.5, 204.5)];
        [bezier2Path addLineToPoint: CGPointMake(242, 204.5)];
        [bezier2Path addLineToPoint: CGPointMake(262, 200.25)];
        [bezier2Path moveToPoint: CGPointMake(61.5, 234)];
        [bezier2Path addLineToPoint: CGPointMake(75.5, 234)];
        [bezier2Path addLineToPoint: CGPointMake(92.5, 230.5)];
        [bezier2Path addLineToPoint: CGPointMake(109.5, 234)];
        [bezier2Path addLineToPoint: CGPointMake(134, 237)];
        [bezier2Path addLineToPoint: CGPointMake(178, 241.5)];
        [bezier2Path moveToPoint: CGPointMake(145, 251)];
        [bezier2Path addLineToPoint: CGPointMake(168.5, 245)];
        [bezier2Path addLineToPoint: CGPointMake(190.5, 234)];
        [bezier2Path addLineToPoint: CGPointMake(203, 227.5)];
        [bezier2Path addLineToPoint: CGPointMake(221.5, 227.5)];
        [bezier2Path addLineToPoint: CGPointMake(243.5, 227.5)];
        [bezier2Path moveToPoint: CGPointMake(91, 257.5)];
        [bezier2Path addLineToPoint: CGPointMake(103.5, 255)];
        [bezier2Path addLineToPoint: CGPointMake(128, 257.5)];
        [bezier2Path addLineToPoint: CGPointMake(156, 258.5)];
        [bezier2Path addLineToPoint: CGPointMake(178, 258.5)];
        [bezier2Path addLineToPoint: CGPointMake(200, 251)];
        [bezier2Path addLineToPoint: CGPointMake(223, 248.5)];
        [strokeColor setStroke];
        bezier2Path.lineWidth = 1;
        bezier2Path.miterLimit = 4;
        bezier2Path.lineCapStyle = kCGLineCapRound;
        [bezier2Path stroke];
    
    //// Bezier 3 Drawing
       UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
       [bezier3Path moveToPoint: CGPointMake(108.5, 145.5)];
       [bezier3Path addLineToPoint: CGPointMake(110.5, 152)];
       [bezier3Path addLineToPoint: CGPointMake(111.5, 163)];
       [bezier3Path addLineToPoint: CGPointMake(109, 181.5)];
       [bezier3Path addLineToPoint: CGPointMake(105.5, 199)];
       [bezier3Path addLineToPoint: CGPointMake(106, 208.5)];
       [bezier3Path addLineToPoint: CGPointMake(109, 216.5)];
       [bezier3Path moveToPoint: CGPointMake(113.5, 216.5)];
       [bezier3Path addLineToPoint: CGPointMake(114.5, 205)];
       [bezier3Path moveToPoint: CGPointMake(115.5, 201)];
       [bezier3Path addLineToPoint: CGPointMake(114.5, 189)];
       [bezier3Path addLineToPoint: CGPointMake(113.5, 181)];
       [bezier3Path addLineToPoint: CGPointMake(112.5, 173.5)];
       [bezier3Path moveToPoint: CGPointMake(121, 168)];
       [bezier3Path addLineToPoint: CGPointMake(123, 176)];
       [bezier3Path addLineToPoint: CGPointMake(124.5, 186.5)];
       [bezier3Path moveToPoint: CGPointMake(126, 177)];
       [bezier3Path addLineToPoint: CGPointMake(126.5, 183)];
       [bezier3Path addLineToPoint: CGPointMake(129, 192)];
       [bezier3Path addLineToPoint: CGPointMake(131.5, 198)];
       [bezier3Path moveToPoint: CGPointMake(130, 186.5)];
       [bezier3Path addLineToPoint: CGPointMake(130.5, 191)];
       [bezier3Path addLineToPoint: CGPointMake(134, 197)];
       [bezier3Path moveToPoint: CGPointMake(143, 174.5)];
       [bezier3Path addLineToPoint: CGPointMake(144, 181.5)];
       [bezier3Path addLineToPoint: CGPointMake(145.5, 188.5)];
       [bezier3Path addLineToPoint: CGPointMake(148, 194)];
       [bezier3Path moveToPoint: CGPointMake(151.5, 195.5)];
       [bezier3Path addLineToPoint: CGPointMake(148.5, 189.5)];
       [bezier3Path addLineToPoint: CGPointMake(147, 184.5)];
       [bezier3Path addLineToPoint: CGPointMake(146.5, 179.5)];
       [bezier3Path moveToPoint: CGPointMake(144, 188.5)];
       [bezier3Path addLineToPoint: CGPointMake(142, 182.5)];
       [bezier3Path addLineToPoint: CGPointMake(141, 176.5)];
       [bezier3Path addLineToPoint: CGPointMake(140.5, 168.5)];
       [bezier3Path addLineToPoint: CGPointMake(141, 161.5)];
       [bezier3Path moveToPoint: CGPointMake(84, 151)];
       [bezier3Path addLineToPoint: CGPointMake(81.5, 158.5)];
       [bezier3Path addLineToPoint: CGPointMake(80.5, 165.5)];
       [bezier3Path addLineToPoint: CGPointMake(80.5, 173.5)];
       [bezier3Path moveToPoint: CGPointMake(78.5, 168)];
       [bezier3Path addLineToPoint: CGPointMake(79, 160)];
       [bezier3Path addLineToPoint: CGPointMake(81.5, 151)];
       [bezier3Path addLineToPoint: CGPointMake(85, 143.5)];
       [bezier3Path moveToPoint: CGPointMake(87.5, 132.5)];
       [bezier3Path addLineToPoint: CGPointMake(83.5, 138.5)];
       [bezier3Path addLineToPoint: CGPointMake(80.5, 144.5)];
       [bezier3Path moveToPoint: CGPointMake(43.5, 173.5)];
       [bezier3Path addLineToPoint: CGPointMake(41.5, 181.5)];
       [bezier3Path addLineToPoint: CGPointMake(38.5, 189)];
       [bezier3Path addLineToPoint: CGPointMake(35.5, 194.5)];
       [bezier3Path moveToPoint: CGPointMake(46.5, 173.5)];
       [bezier3Path addLineToPoint: CGPointMake(44.5, 181)];
       [bezier3Path addLineToPoint: CGPointMake(41, 190)];
       [bezier3Path moveToPoint: CGPointMake(48, 165.5)];
       [bezier3Path addLineToPoint: CGPointMake(47, 171)];
       [bezier3Path moveToPoint: CGPointMake(61.5, 152)];
       [bezier3Path addLineToPoint: CGPointMake(59, 161.5)];
       [bezier3Path moveToPoint: CGPointMake(60.5, 164.5)];
       [bezier3Path addLineToPoint: CGPointMake(59, 171)];
       [bezier3Path addLineToPoint: CGPointMake(58.5, 178.5)];
       [bezier3Path moveToPoint: CGPointMake(57.5, 167)];
       [bezier3Path addLineToPoint: CGPointMake(56.5, 176.5)];
       [bezier3Path moveToPoint: CGPointMake(67.5, 179.5)];
       [bezier3Path addLineToPoint: CGPointMake(68, 185.5)];
       [bezier3Path moveToPoint: CGPointMake(69.5, 186.5)];
       [bezier3Path addLineToPoint: CGPointMake(69.5, 201)];
       [bezier3Path moveToPoint: CGPointMake(85, 167)];
       [bezier3Path addLineToPoint: CGPointMake(85.5, 178)];
       [bezier3Path addLineToPoint: CGPointMake(86.5, 186.5)];
       [bezier3Path moveToPoint: CGPointMake(196.5, 133.5)];
       [bezier3Path addLineToPoint: CGPointMake(197, 138)];
       [bezier3Path addLineToPoint: CGPointMake(199.5, 144.5)];
       [bezier3Path addLineToPoint: CGPointMake(200.04, 147)];
       [bezier3Path moveToPoint: CGPointMake(199.5, 159)];
       [bezier3Path addLineToPoint: CGPointMake(201, 151.5)];
       [bezier3Path addLineToPoint: CGPointMake(200.04, 147)];
       [bezier3Path moveToPoint: CGPointMake(201, 133)];
       [bezier3Path addLineToPoint: CGPointMake(200.5, 139)];
       [bezier3Path addLineToPoint: CGPointMake(200.04, 147)];
       [bezier3Path moveToPoint: CGPointMake(212.5, 126)];
       [bezier3Path addLineToPoint: CGPointMake(210.5, 133.5)];
       [bezier3Path addLineToPoint: CGPointMake(208.5, 141)];
       [bezier3Path moveToPoint: CGPointMake(231, 136.5)];
       [bezier3Path addLineToPoint: CGPointMake(232.5, 146)];
       [bezier3Path addLineToPoint: CGPointMake(238.5, 159)];
       [bezier3Path moveToPoint: CGPointMake(210.5, 181)];
       [bezier3Path addLineToPoint: CGPointMake(215, 188.5)];
       [bezier3Path addLineToPoint: CGPointMake(220, 194)];
       [bezier3Path moveToPoint: CGPointMake(208.5, 194.5)];
       [bezier3Path addLineToPoint: CGPointMake(203, 191)];
       [bezier3Path moveToPoint: CGPointMake(258.5, 143.5)];
       [bezier3Path addLineToPoint: CGPointMake(258.5, 147)];
       [bezier3Path moveToPoint: CGPointMake(263, 146)];
       [bezier3Path addLineToPoint: CGPointMake(263, 151)];
       [bezier3Path addLineToPoint: CGPointMake(265.5, 155)];
       [bezier3Path moveToPoint: CGPointMake(124.5, 128.5)];
       [bezier3Path addLineToPoint: CGPointMake(126.5, 138)];
       [bezier3Path addLineToPoint: CGPointMake(131.5, 141)];
       [bezier3Path addLineToPoint: CGPointMake(134, 147)];
       [bezier3Path moveToPoint: CGPointMake(224, 109)];
       [bezier3Path addLineToPoint: CGPointMake(226, 112.5)];
       [bezier3Path addLineToPoint: CGPointMake(226, 116.5)];
       [bezier3Path moveToPoint: CGPointMake(220, 115)];
       [bezier3Path addLineToPoint: CGPointMake(218.5, 125)];
       [bezier3Path moveToPoint: CGPointMake(228.5, 188.5)];
       [bezier3Path addLineToPoint: CGPointMake(231, 190)];
       [bezier3Path addLineToPoint: CGPointMake(236, 192)];
       [bezier3Path addLineToPoint: CGPointMake(244.5, 199)];
       [bezier3Path moveToPoint: CGPointMake(164.5, 167)];
       [bezier3Path addLineToPoint: CGPointMake(167, 173.5)];
       [bezier3Path addLineToPoint: CGPointMake(173.5, 181)];
       [strokeColor setStroke];
       bezier3Path.lineWidth = 0.5;
       bezier3Path.miterLimit = 4;
       bezier3Path.lineCapStyle = kCGLineCapRound;
       [bezier3Path stroke];

    
    animateLayer.path = bezierPath.CGPath;
    animateLayer.strokeColor = lineColor;
    
    animateLayer2.path = bezier2Path.CGPath;
    animateLayer2.strokeColor = secondLineColor;
    
    animateLayer3.path = bezier3Path.CGPath;
    animateLayer3.strokeColor = thirdLineColor;
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = duration;
        pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
        pathAnimation.autoreverses = NO;
    
    [self.layer addSublayer:animateLayer];
    [self.layer addSublayer:animateLayer2];
    [self.layer addSublayer:animateLayer3];
    
    [animateLayer addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer2 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer3 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];

    animateLayer.strokeEnd = 1.0;
    animateLayer2.strokeEnd = 1.0;
    animateLayer3.strokeEnd = 1.0;
}
-(void)animatePlanetLinesWithColor:(CGColorRef)lineColor withSecondColor:(CGColorRef)secondLineColor withThirdColor:(CGColorRef)thirdLineColor andLineWidth:(CGFloat)lineWidth animationDuration:(CGFloat)duration
{    CAShapeLayer* animateLayer = [CAShapeLayer layer];
    animateLayer.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer.lineWidth   = lineWidth;
    animateLayer.strokeEnd   = 0.0;
    
    CAShapeLayer* animateLayer2 = [CAShapeLayer layer];
    animateLayer2.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer2.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer2.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer2.lineWidth   = lineWidth;
    animateLayer2.strokeEnd   = 0.0;
    
    CAShapeLayer* animateLayer3 = [CAShapeLayer layer];
    animateLayer3.lineCap = kCALineCapRound;// Конец и начало линии будут заокругленными
    animateLayer3.lineJoin = kCALineJoinBevel;//Переход между линиями будет заоккругленный
    animateLayer3.fillColor   = [[UIColor clearColor] CGColor];//сам слой будет прозрачный
    animateLayer3.lineWidth   = lineWidth;
    animateLayer3.strokeEnd   = 0.0;
    
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(60.5, 154)];
    [bezierPath addLineToPoint: CGPointMake(51.5, 158)];
    [bezierPath addLineToPoint: CGPointMake(42.5, 165)];
    [bezierPath addLineToPoint: CGPointMake(34, 173)];
    [bezierPath addLineToPoint: CGPointMake(28, 181)];
    [bezierPath addLineToPoint: CGPointMake(26, 189)];
    [bezierPath addLineToPoint: CGPointMake(27, 197)];
    [bezierPath addLineToPoint: CGPointMake(31, 203.5)];
    [bezierPath addLineToPoint: CGPointMake(38, 209)];
    [bezierPath addLineToPoint: CGPointMake(48.5, 213.5)];
    [bezierPath addLineToPoint: CGPointMake(59.5, 216)];
    [bezierPath addLineToPoint: CGPointMake(71, 217)];
    [bezierPath addLineToPoint: CGPointMake(82, 217.5)];
    [bezierPath addLineToPoint: CGPointMake(88.5, 217.3)];
    [bezierPath moveToPoint: CGPointMake(60.5, 154)];
    [bezierPath addLineToPoint: CGPointMake(61, 147)];
    [bezierPath addLineToPoint: CGPointMake(63.5, 134.5)];
    [bezierPath addLineToPoint: CGPointMake(67, 124)];
    [bezierPath addLineToPoint: CGPointMake(71.5, 112.5)];
    [bezierPath addLineToPoint: CGPointMake(77, 104)];
    [bezierPath addLineToPoint: CGPointMake(84, 94.5)];
    [bezierPath addLineToPoint: CGPointMake(92, 87)];
    [bezierPath addLineToPoint: CGPointMake(100, 81.5)];
    [bezierPath addLineToPoint: CGPointMake(108.5, 76.5)];
    [bezierPath addCurveToPoint: CGPointMake(120, 71.5) controlPoint1: CGPointMake(112.17, 75) controlPoint2: CGPointMake(119.6, 71.9)];
    [bezierPath addCurveToPoint: CGPointMake(131, 68) controlPoint1: CGPointMake(120.4, 71.1) controlPoint2: CGPointMake(127.5, 69)];
    [bezierPath addLineToPoint: CGPointMake(147.5, 66.5)];
    [bezierPath addLineToPoint: CGPointMake(161.5, 67.5)];
    [bezierPath addLineToPoint: CGPointMake(175.5, 70)];
    [bezierPath addLineToPoint: CGPointMake(188, 75)];
    [bezierPath addLineToPoint: CGPointMake(200, 82.5)];
    [bezierPath addLineToPoint: CGPointMake(208.5, 89.5)];
    [bezierPath addLineToPoint: CGPointMake(215.5, 96.5)];
    [bezierPath addLineToPoint: CGPointMake(221.5, 103.5)];
    [bezierPath moveToPoint: CGPointMake(60.5, 154)];
    [bezierPath addLineToPoint: CGPointMake(60.5, 160.5)];
    [bezierPath addLineToPoint: CGPointMake(61.5, 168)];
    [bezierPath moveToPoint: CGPointMake(221.5, 103.5)];
    [bezierPath addLineToPoint: CGPointMake(230.5, 102)];
    [bezierPath addLineToPoint: CGPointMake(242.5, 101.5)];
    [bezierPath addLineToPoint: CGPointMake(254, 103)];
    [bezierPath addLineToPoint: CGPointMake(264.5, 107)];
    [bezierPath addLineToPoint: CGPointMake(271.5, 112.5)];
    [bezierPath addLineToPoint: CGPointMake(274, 120)];
    [bezierPath addLineToPoint: CGPointMake(273.5, 129)];
    [bezierPath addLineToPoint: CGPointMake(270, 137.5)];
    [bezierPath addLineToPoint: CGPointMake(259.5, 151)];
    [bezierPath addLineToPoint: CGPointMake(251, 159.5)];
    [bezierPath addLineToPoint: CGPointMake(238, 169.5)];
    [bezierPath addLineToPoint: CGPointMake(234.67, 171.5)];
    [bezierPath moveToPoint: CGPointMake(221.5, 103.5)];
    [bezierPath addLineToPoint: CGPointMake(225, 108.5)];
    [bezierPath addLineToPoint: CGPointMake(228, 115)];
    [bezierPath moveToPoint: CGPointMake(61.5, 168)];
    [bezierPath addLineToPoint: CGPointMake(57.5, 170.5)];
    [bezierPath addLineToPoint: CGPointMake(54, 175)];
    [bezierPath addLineToPoint: CGPointMake(52.5, 180)];
    [bezierPath addLineToPoint: CGPointMake(53, 185)];
    [bezierPath addLineToPoint: CGPointMake(55.5, 189)];
    [bezierPath addLineToPoint: CGPointMake(60.5, 192)];
    [bezierPath addLineToPoint: CGPointMake(68, 195)];
    [bezierPath addLineToPoint: CGPointMake(70.5, 195.47)];
    [bezierPath moveToPoint: CGPointMake(61.5, 168)];
    [bezierPath addLineToPoint: CGPointMake(64, 176.5)];
    [bezierPath addLineToPoint: CGPointMake(66.5, 185)];
    [bezierPath addLineToPoint: CGPointMake(70.5, 195.47)];
    [bezierPath moveToPoint: CGPointMake(228, 115)];
    [bezierPath addLineToPoint: CGPointMake(234.5, 115)];
    [bezierPath addLineToPoint: CGPointMake(242.5, 118)];
    [bezierPath addLineToPoint: CGPointMake(245.5, 122)];
    [bezierPath addLineToPoint: CGPointMake(246, 128)];
    [bezierPath addLineToPoint: CGPointMake(244.5, 133.5)];
    [bezierPath addLineToPoint: CGPointMake(240.5, 139)];
    [bezierPath addLineToPoint: CGPointMake(236.83, 143)];
    [bezierPath moveToPoint: CGPointMake(228, 115)];
    [bezierPath addLineToPoint: CGPointMake(231, 122)];
    [bezierPath addLineToPoint: CGPointMake(234.67, 133.5)];
    [bezierPath addLineToPoint: CGPointMake(236.83, 143)];
    [bezierPath moveToPoint: CGPointMake(88.5, 217.3)];
    [bezierPath addLineToPoint: CGPointMake(98.5, 217)];
    [bezierPath addLineToPoint: CGPointMake(119.5, 214.5)];
    [bezierPath addLineToPoint: CGPointMake(137, 211)];
    [bezierPath addLineToPoint: CGPointMake(152.5, 207)];
    [bezierPath addLineToPoint: CGPointMake(172, 201)];
    [bezierPath addLineToPoint: CGPointMake(191.5, 193.5)];
    [bezierPath addLineToPoint: CGPointMake(207, 186.5)];
    [bezierPath addLineToPoint: CGPointMake(223, 178.5)];
    [bezierPath addLineToPoint: CGPointMake(234.67, 171.5)];
    [bezierPath moveToPoint: CGPointMake(88.5, 217.3)];
    [bezierPath addLineToPoint: CGPointMake(93.5, 223)];
    [bezierPath addLineToPoint: CGPointMake(101.5, 229)];
    [bezierPath addLineToPoint: CGPointMake(110.5, 233.5)];
    [bezierPath addLineToPoint: CGPointMake(119.5, 237)];
    [bezierPath addLineToPoint: CGPointMake(130.5, 240.5)];
    [bezierPath addLineToPoint: CGPointMake(143, 242.5)];
    [bezierPath addLineToPoint: CGPointMake(155, 242.5)];
    [bezierPath addLineToPoint: CGPointMake(166, 241.5)];
    [bezierPath addLineToPoint: CGPointMake(175.5, 239)];
    [bezierPath addLineToPoint: CGPointMake(183, 236)];
    [bezierPath addLineToPoint: CGPointMake(192.5, 231.5)];
    [bezierPath addLineToPoint: CGPointMake(200, 226.5)];
    [bezierPath addLineToPoint: CGPointMake(206, 222)];
    [bezierPath addLineToPoint: CGPointMake(214, 213.5)];
    [bezierPath addLineToPoint: CGPointMake(222, 203.5)];
    [bezierPath addLineToPoint: CGPointMake(227.5, 194)];
    [bezierPath addLineToPoint: CGPointMake(232.5, 182)];
    [bezierPath addLineToPoint: CGPointMake(234.67, 171.5)];
    [bezierPath moveToPoint: CGPointMake(236.83, 143)];
    [bezierPath addLineToPoint: CGPointMake(235, 145)];
    [bezierPath addLineToPoint: CGPointMake(230, 150)];
    [bezierPath addLineToPoint: CGPointMake(224, 154.5)];
    [bezierPath addLineToPoint: CGPointMake(216.5, 159.5)];
    [bezierPath addLineToPoint: CGPointMake(209.5, 164)];
    [bezierPath addLineToPoint: CGPointMake(202.5, 168)];
    [bezierPath addLineToPoint: CGPointMake(195.5, 171.5)];
    [bezierPath addLineToPoint: CGPointMake(186.5, 176)];
    [bezierPath addLineToPoint: CGPointMake(175, 181)];
    [bezierPath addLineToPoint: CGPointMake(163.5, 185)];
    [bezierPath addLineToPoint: CGPointMake(151.5, 188.5)];
    [bezierPath addLineToPoint: CGPointMake(140, 191.5)];
    [bezierPath addLineToPoint: CGPointMake(128, 194)];
    [bezierPath addLineToPoint: CGPointMake(116, 196)];
    [bezierPath addLineToPoint: CGPointMake(104, 197)];
    [bezierPath addLineToPoint: CGPointMake(92.5, 197.5)];
    [bezierPath addLineToPoint: CGPointMake(83.5, 197)];
    [bezierPath addLineToPoint: CGPointMake(76, 196.5)];
    [bezierPath addLineToPoint: CGPointMake(70.5, 195.47)];
    [strokeColor setStroke];
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    [bezierPath stroke];

    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(156, 114.5)];
    [bezier2Path addLineToPoint: CGPointMake(162, 111.5)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 106)];
    [bezier2Path addLineToPoint: CGPointMake(181, 99)];
    [bezier2Path addLineToPoint: CGPointMake(187.5, 92)];
    [bezier2Path addLineToPoint: CGPointMake(191.5, 85)];
    [bezier2Path addLineToPoint: CGPointMake(194, 79)];
    [bezier2Path moveToPoint: CGPointMake(109.5, 93)];
    [bezier2Path addLineToPoint: CGPointMake(102.5, 92.5)];
    [bezier2Path addLineToPoint: CGPointMake(96.5, 90.5)];
    [bezier2Path addLineToPoint: CGPointMake(91.5, 87.5)];
    [bezier2Path moveToPoint: CGPointMake(120, 91.5)];
    [bezier2Path addLineToPoint: CGPointMake(127.5, 89.5)];
    [bezier2Path addLineToPoint: CGPointMake(135.5, 87)];
    [bezier2Path addLineToPoint: CGPointMake(143.5, 82.5)];
    [bezier2Path addCurveToPoint: CGPointMake(151, 77) controlPoint1: CGPointMake(145.83, 80.83) controlPoint2: CGPointMake(150.6, 77.4)];
    [bezier2Path addCurveToPoint: CGPointMake(155.5, 72) controlPoint1: CGPointMake(151.4, 76.6) controlPoint2: CGPointMake(154.17, 73.5)];
    [bezier2Path addLineToPoint: CGPointMake(157.5, 67.5)];
    [bezier2Path moveToPoint: CGPointMake(97.5, 108.5)];
    [bezier2Path addLineToPoint: CGPointMake(102, 109.5)];
    [bezier2Path addLineToPoint: CGPointMake(109.5, 109.5)];
    [bezier2Path addLineToPoint: CGPointMake(117.5, 108.5)];
    [bezier2Path addLineToPoint: CGPointMake(124.5, 107)];
    [bezier2Path addLineToPoint: CGPointMake(133, 105)];
    [bezier2Path moveToPoint: CGPointMake(103, 128)];
    [bezier2Path addCurveToPoint: CGPointMake(107, 127.5) controlPoint1: CGPointMake(103.4, 128) controlPoint2: CGPointMake(105.83, 127.67)];
    [bezier2Path addLineToPoint: CGPointMake(111.5, 127)];
    [bezier2Path addLineToPoint: CGPointMake(115.5, 126)];
    [bezier2Path moveToPoint: CGPointMake(94.5, 127.5)];
    [bezier2Path addLineToPoint: CGPointMake(87, 127)];
    [bezier2Path addLineToPoint: CGPointMake(80, 124.5)];
    [bezier2Path addCurveToPoint: CGPointMake(73.5, 121.5) controlPoint1: CGPointMake(78, 123.5) controlPoint2: CGPointMake(73.9, 121.5)];
    [bezier2Path addCurveToPoint: CGPointMake(69, 119) controlPoint1: CGPointMake(73.1, 121.5) controlPoint2: CGPointMake(70.33, 119.83)];
    [bezier2Path moveToPoint: CGPointMake(86.5, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(78.5, 165)];
    [bezier2Path addLineToPoint: CGPointMake(69.5, 161.5)];
    [bezier2Path addLineToPoint: CGPointMake(60.5, 156)];
    [bezier2Path moveToPoint: CGPointMake(106.5, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(112, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(116.5, 166)];
    [bezier2Path addLineToPoint: CGPointMake(125.5, 164.5)];
    [bezier2Path addLineToPoint: CGPointMake(136, 162)];
    [bezier2Path addLineToPoint: CGPointMake(145.5, 159.5)];
    [bezier2Path addLineToPoint: CGPointMake(155, 156.5)];
    [bezier2Path addLineToPoint: CGPointMake(164.5, 153.5)];
    [bezier2Path addLineToPoint: CGPointMake(174.5, 149)];
    [bezier2Path addLineToPoint: CGPointMake(184, 144.5)];
    [bezier2Path addLineToPoint: CGPointMake(192, 139.5)];
    [bezier2Path addLineToPoint: CGPointMake(198, 135.5)];
    [bezier2Path addLineToPoint: CGPointMake(203.5, 132)];
    [bezier2Path moveToPoint: CGPointMake(212, 124)];
    [bezier2Path addLineToPoint: CGPointMake(216, 119)];
    [bezier2Path addLineToPoint: CGPointMake(219.5, 113)];
    [bezier2Path addLineToPoint: CGPointMake(222.5, 105.5)];
    [bezier2Path moveToPoint: CGPointMake(125.5, 145)];
    [bezier2Path addLineToPoint: CGPointMake(133.5, 143)];
    [bezier2Path addLineToPoint: CGPointMake(146.5, 139)];
    [bezier2Path addLineToPoint: CGPointMake(155, 136)];
    [bezier2Path addLineToPoint: CGPointMake(164, 132)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 128.5)];
    [bezier2Path addLineToPoint: CGPointMake(178, 125)];
    [bezier2Path moveToPoint: CGPointMake(86.5, 184)];
    [bezier2Path addLineToPoint: CGPointMake(93.5, 184.5)];
    [bezier2Path addLineToPoint: CGPointMake(101, 184.5)];
    [bezier2Path addLineToPoint: CGPointMake(109, 183.5)];
    [bezier2Path moveToPoint: CGPointMake(190.5, 159.5)];
    [bezier2Path addLineToPoint: CGPointMake(196.5, 157.5)];
    [bezier2Path addLineToPoint: CGPointMake(204, 153)];
    [bezier2Path addLineToPoint: CGPointMake(213, 146)];
    [bezier2Path addLineToPoint: CGPointMake(219, 141.5)];
    [bezier2Path addLineToPoint: CGPointMake(223, 137)];
    [bezier2Path moveToPoint: CGPointMake(167, 213.5)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 212.5)];
    [bezier2Path addLineToPoint: CGPointMake(180.5, 209)];
    [bezier2Path addLineToPoint: CGPointMake(188.5, 205.5)];
    [bezier2Path addLineToPoint: CGPointMake(195, 202.5)];
    [bezier2Path addLineToPoint: CGPointMake(201, 199.5)];
    [bezier2Path addLineToPoint: CGPointMake(203.5, 196.5)];
    [bezier2Path moveToPoint: CGPointMake(208.5, 209)];
    [bezier2Path addLineToPoint: CGPointMake(214.5, 205.5)];
    [bezier2Path addLineToPoint: CGPointMake(220, 201.5)];
    [bezier2Path addLineToPoint: CGPointMake(227.5, 194)];
    [bezier2Path moveToPoint: CGPointMake(198, 215)];
    [bezier2Path addLineToPoint: CGPointMake(190.5, 218.5)];
    [bezier2Path addLineToPoint: CGPointMake(180, 222.5)];
    [bezier2Path addLineToPoint: CGPointMake(170, 226)];
    [bezier2Path addLineToPoint: CGPointMake(159, 229)];
    [bezier2Path addLineToPoint: CGPointMake(148.5, 231.5)];
    [bezier2Path addLineToPoint: CGPointMake(134.5, 233)];
    [bezier2Path addLineToPoint: CGPointMake(121, 233.5)];
    [bezier2Path addLineToPoint: CGPointMake(109.5, 233)];
    [strokeColor setStroke];
    bezier2Path.lineWidth = 1;
    bezier2Path.miterLimit = 4;
    bezier2Path.lineCapStyle = kCGLineCapRound;
    [bezier2Path stroke];
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(252.5, 181)];
    [bezier3Path addLineToPoint: CGPointMake(257.5, 177.5)];
    [bezier3Path addLineToPoint: CGPointMake(264.5, 178)];
    [bezier3Path addLineToPoint: CGPointMake(269, 181.5)];
    [bezier3Path addLineToPoint: CGPointMake(270.5, 186.5)];
    [bezier3Path addLineToPoint: CGPointMake(269.5, 191)];
    [bezier3Path addLineToPoint: CGPointMake(266.5, 195.5)];
    [bezier3Path addLineToPoint: CGPointMake(261.5, 197)];
    [bezier3Path addLineToPoint: CGPointMake(255.5, 196)];
    [bezier3Path addLineToPoint: CGPointMake(251.5, 192)];
    [bezier3Path addLineToPoint: CGPointMake(250, 187)];
    [bezier3Path addLineToPoint: CGPointMake(252.5, 181)];
    [bezier3Path closePath];
    [strokeColor setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
    
    //// Bezier 4 Drawing
    //UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(240, 211)];
    [bezier3Path addLineToPoint: CGPointMake(242, 209)];
    [bezier3Path addLineToPoint: CGPointMake(244.5, 209)];
    [bezier3Path addLineToPoint: CGPointMake(246.5, 210.5)];
    [bezier3Path addLineToPoint: CGPointMake(247, 213)];
    [bezier3Path addLineToPoint: CGPointMake(246, 215)];
    [bezier3Path addLineToPoint: CGPointMake(243.5, 216)];
    [bezier3Path addLineToPoint: CGPointMake(241, 215.5)];
    [bezier3Path addLineToPoint: CGPointMake(239.5, 213.5)];
    [bezier3Path addLineToPoint: CGPointMake(240, 211)];
    [bezier3Path closePath];
    [strokeColor setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
    
    //// Bezier 5 Drawing
    [bezier3Path moveToPoint: CGPointMake(74.5, 242)];
    [bezier3Path addLineToPoint: CGPointMake(76.5, 241)];
    [bezier3Path addLineToPoint: CGPointMake(79.5, 242)];
    [bezier3Path addCurveToPoint: CGPointMake(81, 244.5) controlPoint1: CGPointMake(80, 242.67) controlPoint2: CGPointMake(81, 244.1)];
    [bezier3Path addCurveToPoint: CGPointMake(81, 247.5) controlPoint1: CGPointMake(81, 244.9) controlPoint2: CGPointMake(81.17, 246.83)];
    [bezier3Path addLineToPoint: CGPointMake(78.5, 249)];
    [bezier3Path addLineToPoint: CGPointMake(75, 249)];
    [bezier3Path addLineToPoint: CGPointMake(73.5, 247)];
    [bezier3Path addLineToPoint: CGPointMake(73, 244.5)];
    [bezier3Path addLineToPoint: CGPointMake(74.5, 242)];
    [bezier3Path closePath];
    [strokeColor setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
    //// Bezier 6 Drawing
    [bezier3Path moveToPoint: CGPointMake(35.5, 76.5)];
    [bezier3Path addCurveToPoint: CGPointMake(41.5, 72) controlPoint1: CGPointMake(37.33, 75) controlPoint2: CGPointMake(41.1, 72)];
    [bezier3Path addLineToPoint: CGPointMake(48, 71)];
    [bezier3Path addLineToPoint: CGPointMake(54.5, 73)];
    [bezier3Path addLineToPoint: CGPointMake(60.5, 80)];
    [bezier3Path addLineToPoint: CGPointMake(61, 89.5)];
    [bezier3Path addLineToPoint: CGPointMake(57, 97)];
    [bezier3Path addLineToPoint: CGPointMake(48.5, 101)];
    [bezier3Path addLineToPoint: CGPointMake(39.5, 99)];
    [bezier3Path addLineToPoint: CGPointMake(33.5, 94.5)];
    [bezier3Path addLineToPoint: CGPointMake(31.5, 85.5)];
    [bezier3Path addLineToPoint: CGPointMake(35.5, 76.5)];
    [bezier3Path closePath];
    [strokeColor setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
    
    //// Bezier 7 Drawing
    [bezier3Path moveToPoint: CGPointMake(217, 51)];
    [bezier3Path addCurveToPoint: CGPointMake(222.5, 50) controlPoint1: CGPointMake(218, 50.67) controlPoint2: CGPointMake(222.1, 50)];
    [bezier3Path addLineToPoint: CGPointMake(227, 53)];
    [bezier3Path addLineToPoint: CGPointMake(227.5, 58)];
    [bezier3Path addLineToPoint: CGPointMake(225.5, 62)];
    [bezier3Path addLineToPoint: CGPointMake(220.5, 63.5)];
    [bezier3Path addLineToPoint: CGPointMake(215.5, 61)];
    [bezier3Path addLineToPoint: CGPointMake(214, 55.5)];
    [bezier3Path addLineToPoint: CGPointMake(217, 51)];
    [bezier3Path closePath];
    [strokeColor setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
    
    animateLayer.path = bezierPath.CGPath;
    animateLayer.strokeColor = lineColor;
    
    animateLayer2.path = bezier2Path.CGPath;
    animateLayer2.strokeColor = secondLineColor;
    
    animateLayer3.path = bezier3Path.CGPath;
    animateLayer3.strokeColor = thirdLineColor;
    
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = duration;
        pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
        pathAnimation.autoreverses = NO;
    
    [self.layer addSublayer:animateLayer];
    [self.layer addSublayer:animateLayer2];
    [self.layer addSublayer:animateLayer3];
    
    [animateLayer addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer2 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
    [animateLayer3 addAnimation:pathAnimation forKey:@"strokeEndAnimation"];

    animateLayer.strokeEnd = 1.0;
    animateLayer2.strokeEnd = 1.0;
    animateLayer3.strokeEnd = 1.0;
}
@end
