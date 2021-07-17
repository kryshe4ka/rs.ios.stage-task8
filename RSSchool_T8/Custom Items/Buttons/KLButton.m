//
//  KLButton.m
//  RSSchool_T8
//
//  Created by Liza Kryshkovskaya on 16.07.21.
//

#import "KLButton.h"

@implementation KLButton

-(void)setUp {
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 10;
    self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self setTitleColor:[UIColor colorWithRed:33/255.0 green:176/255.0 blue:142/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    // настраиваем тень кнопки
    self.layer.shadowColor = [[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0] CGColor];
    self.layer.shadowRadius = 2.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.25f;

}

@end
