//
//  ViewController.m
//  stopwatch
//
//  Created by Gabriella Messias Aleo on 22/01/20.
//  Copyright © 2020 Gabriella Messias Aleo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timer, buttonReset, buttonStart;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    running = NO;
    count = 0;
    timer.text = @"00:00.00";
    buttonStart.layer.cornerRadius = 60;
    buttonReset.layer.cornerRadius = 60;
}


- (IBAction)btStartClick:(id)sender {
    
    if(running == NO){
        running = YES;
        [buttonStart setTitle:@"STOP" forState:UIControlStateNormal];
        
        if(myTimer == nil){
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    }else{
        [self resetTimer];
    }
}

- (IBAction)btResetClick:(id)sender {
    
    [self resetTimer];
    count = 0;
    timer.text = @"00:00.00";
    
}

-(void)updateTimer{
    count++;
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int msec = count %100;
    
    if (sec >= 60) {
        sec = sec % 60;
    }
    timer.text = [NSString stringWithFormat:@"%02d:%02d.%02d", min, sec, msec];
    
}
-(void)resetTimer{
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [buttonStart setTitle:@"START" forState:UIControlStateNormal];
}
@end
