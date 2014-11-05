//
//  McDonalds.h
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantPatron.h"
#import "MenuItem.h"

@interface McDonalds : NSObject

-(void) enterRestaurantWithPatron: (id<RestaurantPatron>) patron;

@end
