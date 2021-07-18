//
//  KLView.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 17.07.21.
//

#import "KLView.h"

@implementation KLView

-(void)setUp {
    self.layer.cornerRadius = 8;
    // настраиваем тень
    self.backgroundColor = [UIColor whiteColor];
    self.layer.shadowColor = [[UIColor colorNamed:@"Chill Sky"] CGColor];
    self.layer.shadowRadius = 8.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.25f;
}

-(UIImage *)asImage {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(300, 300), self.opaque, 0.0f);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    UIImage *imageFromView = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imageFromView;
}

@end
