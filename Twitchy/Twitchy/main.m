//
//  main.m
//  Twitchy
//
//  Created by Programming on 12/3/14.
//  Copyright (c) 2014 Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"https://api.twitch.tv/kraken/streams/dreamhackcs"];
        
        NSMutableURLRequest *req =[NSMutableURLRequest requestWithURL:url];
        [req addValue:@"application/vnd.twitchtv.v2+json" forHTTPHeaderField:@"Accept"];
        [req setHTTPMethod:@"GET"];
        NSError *err;
        NSURLResponse *response;
        NSData *data = [NSURLConnection sendSynchronousRequest:req returningResponse:&response error:&err];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
        NSLog(@"%@",dict);
        if([dict valueForKey:@"stream"]){
            NSLog(@"%@",[dict valueForKey:@"stream"]);
            NSLog(@"Sing Sing is live!");
        }
        else{
            NSLog(@"10 years since Sing strim");
        }
        
        
    }
    return 0;
}

