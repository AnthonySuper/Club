//
//  CFHelper.c
//  CoinFlip
//
//  Created by Programming on 11/12/14.
//  Copyright (c) 2014 Programming. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int flip_coin(){
    return (rand() % 2 == 0);
}