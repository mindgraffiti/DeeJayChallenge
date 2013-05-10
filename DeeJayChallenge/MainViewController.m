//
//  MainViewController.m
//  DeeJayChallenge
//
//  Created by Thuy Copeland on 5/8/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "MainViewController.h"
#import "Album.h"
#import "AudioButton.h"

@interface MainViewController ()
@property (strong, nonatomic) Album *album;
@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayLogo];
    [self buildAlbum];
    
}

- (void)displayLogo{
    UIImage *image = [UIImage imageNamed:@"Logo"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.navigationItem setTitleView:imageView];
}

- (void)buildAlbum{
    int count = 0;
        for (int y = 0; y<3; y++) {
            for (int x = 0; x<2; x++) {
                // Add the Album bg image and the album art
                UIButton *button = [[UIButton alloc]init];
                button.frame = CGRectMake(x*137+25, y*137+2, 135, 135);
                [button setBackgroundImage:[UIImage imageNamed:@"AlbumImageBg"] forState:UIControlStateNormal];
                NSArray *albumArt = [NSArray arrayWithObjects: @"The_Willows",@"Robert_Browning",@"Moby_Dick",@"King_Solomon",@"Heart_of_Darkness",@"Botchan", nil];
                UIImage *art = [UIImage imageNamed:[albumArt objectAtIndex:count]];
                [button setImage:art forState:UIControlStateNormal];
                [self.view addSubview:button];
                [button addTarget:nil action:nil forControlEvents:UIControlEventTouchUpInside];
                
                // Overlay title bar color
                UIImageView *titleBar = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"TitleBar"]];
                titleBar.frame = CGRectMake(x*137+25, y*137+2, 135, 29);
                [self.view addSubview:titleBar];
                
                // Put the titles in
                UIFont *titleFont = [UIFont fontWithName:@"Share-Regular" size:12];
                NSArray *albumTitleArray = [NSArray arrayWithObjects:@"The Willows",@"Childe Roland",@"Moby Dick",@"King Solomon's Mine", @"Heart of Darkness", @"Botchan", nil];
                NSString *titleText = [albumTitleArray objectAtIndex:count];
                UILabel *albumTitleLabel = [[UILabel alloc] initWithFrame: CGRectMake(x*141+26, y*139+2, 135, 12)];
                albumTitleLabel.backgroundColor = [UIColor clearColor];
                [albumTitleLabel setFont:titleFont];
                albumTitleLabel.text = titleText;
                [self.view addSubview:albumTitleLabel];
                NSLog(@"%@", albumTitleLabel.text);
                
                // Put the author name in
                UIFont *authorFont = [UIFont fontWithName:@"Share-Bold" size:12];
                NSArray *albumAuthorArray = [NSArray arrayWithObjects:@"ALGERNON BLACKWOOD",@"ROBERT BROWNING", @"HERMAN MELVILLE", @"H. RIDER HAGGARD", @"JOSEPH CONRAD", @"SOSEKI NATSUME", nil];
                NSString *authorText = [albumAuthorArray objectAtIndex:count];
                UILabel *albumAuthorLabel = [[UILabel alloc] initWithFrame:CGRectMake(x*141+26, y*139+14, 135, 12)];
                albumAuthorLabel.backgroundColor = [UIColor clearColor];
                [albumAuthorLabel setFont:authorFont];
                albumAuthorLabel.text = authorText;
                [self.view addSubview:albumAuthorLabel];
                
                // Add the play/pause button over the top!
                AudioButton *buttonPlayPause = [[AudioButton alloc]init];
                buttonPlayPause.frame = CGRectMake(x*137+25, y*137+2, 135, 135);
                UIImage *playPauseIcons = [UIImage imageNamed:@"PlayIcon"];
                [buttonPlayPause setImage:playPauseIcons forState:UIControlStateNormal];
                [self.view addSubview:buttonPlayPause];
                [buttonPlayPause addTarget:self action:@selector(handlePlayPause:) forControlEvents:UIControlEventTouchUpInside];
                buttonPlayPause.albumTitle = titleText;
                count++;
                NSLog(@"Count: %d", count);
            }
    }
}

- (IBAction)handlePlayPause:(id)sender{
    UIButton *ButtonPushed = (UIButton *)sender;
    NSLog(@"Button pressed: %@",[sender albumTitle]);
    NSLog(@"Play button pushed");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
