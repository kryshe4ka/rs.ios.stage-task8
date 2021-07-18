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
    [self setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
    
    // настраиваем тень кнопки
    self.layer.shadowColor = [[UIColor colorNamed:@"Black"] CGColor];
    self.layer.shadowRadius = 2.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.25f;
}


- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.layer.shadowColor = [UIColor colorNamed:@"Light Green Sea"].CGColor;
        self.layer.shadowRadius = 4.0;
        self.layer.shadowOpacity = 1;
    }
    else{
        self.layer.shadowColor = [UIColor colorNamed:@"Black"].CGColor;
        self.layer.shadowRadius = 2.0;
        self.layer.shadowOpacity = 0.25f;
    }
}



@end
