//
//  main.m
//  Closures
//
//  Created by Anthony Something on 10/28/14.
//  Copyright (c) 2014 Anthony Super. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Blocks locally capture some code.
        // Yes, the syntax is atrocious. See:
        // http://goshdarnblocksyntax.com/
        void (^block)(void) = ^void (void){
            NSLog(@"I ran a block!");
        };
        block();
        block();
        // Blocks can also take parameters:
        void(^paramblock)(int) = ^(int i){
            NSLog(@"Called with integer: %i",i);
        };
        paramblock(10);
        paramblock(100);
        // Blocks are normal variables, and you can assign then as you please:
        void(^otherParamBlock)(int) = paramblock;
        otherParamBlock(90123);
        
        // Blocks can also capture variables:
        int a = 10;
        void(^varCapture)(void) = ^(void){
            NSLog(@"I have captured the variable i, which is: %i",a);
            
        };
        varCapture();
        // They don't care if you change the variable afterwards:
        a = 100;
        varCapture();
        a = 196010;
        varCapture();
        
    
    }
    
    return 0;
}
