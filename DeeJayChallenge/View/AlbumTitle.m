//
//  AlbumTitle.m
//  DeeJayChallenge
//
//  Created by Thuy Copeland on 5/8/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "AlbumTitle.h"

@implementation AlbumTitle

- (void)awakeFromNib{
    UIFont *albumTitleFont = [UIFont fontWithName:@"Share-Regular" size:self.font.pointSize];
    self.font = albumTitleFont;
}

@end
