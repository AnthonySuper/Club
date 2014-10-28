//
//  ClosureNumberJudge.m
//  ClosureNumberJudge
//
//  Created by Anthony Something on 10/28/14.
//  Copyright (c) 2014 Anthony Super. All rights reserved.
//

#import "ClosureNumberJudge.h"

@implementation ClosureNumberJudge{
    // These variables have no public interface.
    // They are only used inside our class.
    int (^judgeBlock)(int);
    
}
-(void) setJudgementBlock:(int (^)(int))block
{
    judgeBlock = block;
}
-(void) judge:(int)i
{
    int affinity = judgeBlock(i);
    if(affinity < 0)
        NSLog(@"%i is a terrible number! What's wrong with you?",i);
    if(affinity == 0)
        NSLog(@"%i is meh.",i);
    if(affinity > 0)
        NSLog(@"%i is great!",i);
    
}
@end
