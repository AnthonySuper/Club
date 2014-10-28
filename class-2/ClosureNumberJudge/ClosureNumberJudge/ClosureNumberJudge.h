//
//  ClosureNumberJudge.h
//  ClosureNumberJudge
//
//  Created by Anthony Something on 10/28/14.
//  Copyright (c) 2014 Anthony Super. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClosureNumberJudge : NSObject

// We weren't kidding when we said the block syntax was ugly.

-(void) setJudgementBlock: (int (^)(int)) block;
-(void) judge: (int) i;

@end
