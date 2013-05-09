//
//  Artist.m
//  DeeJayChallenge
//
//  Created by Thuy Copeland on 5/8/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (void)awakeFromNib{
    UIFont *artistFont = [UIFont fontWithName:@"Share-Bold" size:self.font.pointSize];
    self.font = artistFont;
}

@end
