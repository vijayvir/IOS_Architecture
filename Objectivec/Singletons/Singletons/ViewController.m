//
//  ViewController.m
//  Singletons
//
//  Created by Apple on 23/11/16.
//  Copyright © 2016 vijayvirSingh. All rights reserved.
//

#import "ViewController.h"
#import "ShareManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ShareManager *sharedManager = [ShareManager sharedManager];
    
    NSLog(@"%@",sharedManager.description);
    
    ShareManager *sharedManager3 = [ShareManager sharedManagerNonGcd];
    
    NSLog(@"3 %@",sharedManager3.description);
    
    
    ShareManager *sharedManager11 = [ShareManager sharedManager];
    
    NSLog(@"%@",sharedManager11.description);
    
    ShareManager *sharedManager33 = [ShareManager sharedManagerNonGcd];
    
    NSLog(@"3 %@",sharedManager33.description);
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.txtVLogs.text = [NSString stringWithFormat:@"%@    %@ " , sharedManager11.description , sharedManager33.description];
    
    
//    2017-02-15 21:07:53.822 Singletons[15765:319999] <ShareManager: 0x60000001c250>
    
//    2017-02-15 21:07:53.823 Singletons[15765:319999] 3 <ShareManager: 0x60800001bfa0>
    
//    2017-02-15 21:07:53.823 Singletons[15765:319999] <ShareManager: 0x60000001c250>
    
//    2017-02-15 21:07:53.823 Singletons[15765:319999] 3 <ShareManager: 0x60800001bfa0>
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
