//
//  RestaurantPatron.h
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MenuItem;
@class RestaurantOrder;
@protocol RestaurantPatron
// Returns how many of this item the person wants
-(unsigned int) considerMenuItem: (MenuItem*) item;

@end
