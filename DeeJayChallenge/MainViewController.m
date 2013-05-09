//
//  MainViewController.m
//  DeeJayChallenge
//
//  Created by Thuy Copeland on 5/8/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()
@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayLogo];
    [self albumBg];
    
}

- (void)displayLogo{
    UIImage *image = [UIImage imageNamed:@"Logo"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.navigationItem setTitleView:imageView];
}

- (void)albumBg{
    NSLog(@"Album Art array: %@", self.albumArt);
    for (int y = 0; y<3; y++) {
        for (int x = 0; x<2; x++) {
            UIButton *button = [[UIButton alloc]init];
            button.frame = CGRectMake(x*135+25, y*135+2, 133, 133);
            [button setBackgroundImage:[UIImage imageNamed:@"AlbumImageBg"] forState:UIControlStateNormal];
            NSArray *albumArt = [NSArray arrayWithObjects: @"The_Willows",@"Robert_Browning",@"Moby_Dick",@"King_Solomon",@"Heart_of_Darkness",@"Botchan", nil];
            NSString *art;
            for (art in albumArt) {
                NSLog(@"%@", art);
                [button setImage:[UIImage imageNamed:art] forState:UIControlStateNormal];
            }
            [self.view addSubview:button];
            [button addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
