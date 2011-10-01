//
//  Paiz_Macro_Singleton.h
//  PaizFoundation
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#define MACRO_SYNTHESIZE_SINGLETON(className)           \
                                                        \
static className *_##className = nil;                   \
                                                        \
+(className *)shared##className {                       \
    @synchronized(self) {                               \
        if (!_##className)                              \
            _##className = [[self alloc] init];         \
    }                                                   \
    return _##className;                                \
}                                                       \
                                                        \
+(id)allocWithZone:(NSZone *)zone {                     \
    @synchronized(self) {                               \
        if (!_##className) {                            \
            _##className = [super allocWithZone:zone];  \
            return _##className;                        \
        }                                               \
    }                                                   \
    return nil;                                         \
}                                                       \
                                                        \
-(id)copyWithZone:(NSZone *)zone {                      \
    return self;                                        \
}                                                       \
                                                        \
-(id)retain {                                           \
    return self;                                        \
}                                                       \
                                                        \
-(NSUInteger)retainCount {                              \
    return NSUIntegerMax;                               \
}                                                       \
                                                        \
-(void)release {                                        \
}                                                       \
                                                        \
-(id)autorelease {                                      \
    return self;                                        \
}

