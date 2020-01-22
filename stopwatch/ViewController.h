//
//  ViewController.h
//  stopwatch
//
//  Created by Gabriella Messias Aleo on 22/01/20.
//  Copyright © 2020 Gabriella Messias Aleo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *timer;
@property (weak, nonatomic) IBOutlet UIButton *buttonStart;
@property (weak, nonatomic) IBOutlet UIButton *buttonReset;

- (IBAction)btStartClick:(id)sender;
- (IBAction)btResetClick:(id)sender;

-(void)updateTimer;
-(void)resetTimer;

@end

