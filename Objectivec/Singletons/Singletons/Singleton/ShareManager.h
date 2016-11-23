//
//  ShareManager.h
//  Singletons
//
//  Created by Apple on 23/11/16.
//  Copyright © 2016 vijayvirSingh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareManager : NSObject
{
    NSString *someProperty;
}

@property (nonatomic, retain) NSString *someProperty;

+ (id)sharedManager;
+ (id)sharedManagerNonGcd;
@end
