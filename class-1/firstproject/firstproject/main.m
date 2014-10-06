//
//  main.m
//  firstproject
//


#import <Foundation/Foundation.h>
#import "FirstObject.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FirstObject *f = [[FirstObject alloc] init];
        [f sayHello];
        [f saySomethingElse];
    }
    return 0;
}
