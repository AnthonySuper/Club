//
//  main.m
//  ClosureNumberJudge
//
//  Created by Anthony Something on 10/28/14.
//  Copyright (c) 2014 Anthony Super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClosureNumberJudge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClosureNumberJudge *judge = [[ClosureNumberJudge alloc] init];
        [judge setJudgementBlock:^int(int i) {
            return 0;
        }];
        
        [judge judge:10];
        [judge judge: 1000];
        [judge judge: 10012312];
        [judge judge: 1230];
        
    }
    return 0;
}
