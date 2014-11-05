//
//  Tony.m
//  Protocols
//
//  Created by Anthony Something on 11/4/14.
//  Copyright (c) 2014 noided. All rights reserved.
//

#import "Tony.h"

@implementation Tony
-(unsigned int) considerMenuItem:(MenuItem *)item
{
    if((item.calories / item.price) > 2 && _caloriesConsumedCurrently < 1000)
    {
        _caloriesConsumedCurrently += item.calories;
        
        
        return 1;
    }
    else{
        NSLog(@"I won't purchase a \"%@\"",item.name);
        return 0;
        
    }
}
@end
