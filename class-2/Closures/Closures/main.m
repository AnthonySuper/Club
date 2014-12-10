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
            NSLog(@"Anthony is not creative and can't come up with exampels");
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
            NSLog(@"I have captured the variable a, which is: %i",a);
            
        };
        varCapture();
        // They don't care if you change the variable afterwards:
        a = 100;
        varCapture();
        a = 196010;
        varCapture();
        // Write a block
        // Which:
        // Takes an int
        // Checks to see if that int is bigger than a captured variable
        // and returns -1 if so, 0 if otherwise.
        // CSS WAS HERE
        // #troll'd
        int(^returningBlock)(int) = ^int(int i){
            if(i > 10)
                return i;
            else
                return -(10-i);
            
        };
        NSLog(@"%i",returningBlock(100));
        NSLog(@"%i",returningBlock(-12313));
        
    }
    
    return 0;
}
