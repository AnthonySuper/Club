//
//  Tony.h
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantPatron.h"
#import "MenuItem.h"

@interface Tony: NSObject<RestaurantPatron>
@property unsigned int caloriesConsumedCurrently;
-(unsigned int) considerMenuItem:(MenuItem *)item;

@end
