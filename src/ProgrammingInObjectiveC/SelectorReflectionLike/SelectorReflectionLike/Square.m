//
//  Square.m
//  SelectorReflectionLike
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Square.h"

@implementation Square : Rectangle

-(void) setSide:(int)s{
    
    [self setWidth:s andHeight:s];
}

-(int) side{
    
    return width;
}
@end
