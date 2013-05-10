//
//  MainViewController.h
//  DeeJayChallenge
//
//  Created by Thuy Copeland on 5/8/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface MainViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (strong, nonatomic) NSArray *albumArt;
@property (strong, nonatomic) MPMoviePlayerController *audioPlayer;
@property (strong, nonatomic) MPMoviePlayerController *activePlayer;
@property (strong, nonatomic) NSString *buttonID;
@property (strong, nonatomic) NSURL *url;
@end
