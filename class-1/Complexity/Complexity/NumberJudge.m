//
//  NumberJudge.m
//  Complexity


#import "NumberJudge.h"

@implementation NumberJudge
@synthesize favorite_number, worst_number;
-(void) judge:(int)i
{
    if(i == favorite_number)
        NSLog(@"Yes, very good! That's my favorite number!");
    else
        NSLog(@"Eh, it's okay.");
}
@end
