//
//  ShareManager.m
//  Singletons
//
//  Created by Apple on 23/11/16.
//  Copyright © 2016 vijayvirSingh. All rights reserved.
//

#import "ShareManager.h"

@implementation ShareManager
@synthesize someProperty;

#pragma mark Singleton Methods
+ (id)sharedManagerNonGcd{
    static ShareManager *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}
+ (id)sharedManager {
    
    // reuse value
    static ShareManager *sharedMyManager = nil;
    
    //  dispatch controll that value didnt run that code twice
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        someProperty = @"Default Property Value";
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}
@end
