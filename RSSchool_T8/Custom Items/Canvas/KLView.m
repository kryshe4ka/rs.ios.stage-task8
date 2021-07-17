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
    self.layer.shadowColor = [[UIColor colorWithRed:0/255.0 green:178/255.0 blue:255/255.0 alpha:1.0] CGColor];
    self.layer.shadowRadius = 8.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.25f;
}

@end
