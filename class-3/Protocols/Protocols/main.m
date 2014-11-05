//
//  main.m
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tony.h"
#import "McDonalds.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        McDonalds *mc = [[McDonalds alloc] init];
        Tony *me = [[Tony alloc] init];
        [mc enterRestaurantWithPatron:me];
    }
    return 0;
}
