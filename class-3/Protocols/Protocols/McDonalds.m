//
//  McDonalds.m
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import "McDonalds.h"
@implementation McDonalds
// Note: This is NOWHERE NEAR the proper way to write this.
// Next class, we'll get into refactoring this to make it better.
-(void) enterRestaurantWithPatron:(id<RestaurantPatron>)patron
{
    MenuItem *burger, *fries, *shake, *megaburger;
    burger = [[MenuItem alloc] init];
    burger.name = @"Burger";
    burger.calories = 300;
    burger.price = 250;
    fries = [[MenuItem alloc] init];
    fries.name = @"French Fries";
    fries.calories = 250;
    fries.price = 100;
    shake = [[MenuItem alloc] init];
    shake.name = @"Chocolate Shake";
    shake.calories = 100;
    shake.price = 300;
    megaburger = [[MenuItem alloc] init];
    megaburger.name = @"Super Mega Ultra Epic Burger (Valve add this please)";
    megaburger.calories = 100000;
    megaburger.price = 500;
    [patron considerMenuItem:burger];
    [patron considerMenuItem:fries];
    [patron considerMenuItem:shake];
    [patron considerMenuItem:megaburger];
}
@end
