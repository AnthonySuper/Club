//
//  main.m
//  Complexity


#import <Foundation/Foundation.h>
#import "NumberJudge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NumberJudge *judgeA = [[NumberJudge alloc] init];
        NumberJudge *judgeB = [[NumberJudge alloc] init];
        [judgeA setFavorite_number:3];
        [judgeB setFavorite_number:10];
        [judgeA judge:10];
        [judgeB judge:10];
        [judgeA judge:3];
        [judgeB judge:3];
        [judgeA judge: 23];
        [judgeB judge: 123];
    }
    return 0;
}
