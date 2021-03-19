//
//  ListNode.m
//  BeSuccess
//
//  Created by ElegantLiar on 2021/3/19.
//

#import "ListNode.h"

@implementation ListNode

- (instancetype)initListWithArray:(NSArray<NSNumber *> *)array {
    if (self = [super init]) {
        ListNode *cur = nil;
        for (NSNumber *number in array) {
            ListNode *node = [[ListNode alloc] initWithValue:number.integerValue];
            if (!cur) {
                self = node;
            } else {
                cur.next = node;
            }
            cur = node;
        }
    }
    return self;
}

- (instancetype)initWithValue:(NSInteger)value {
    if (self = [super init]) {
        _value = value;
    }
    return self;
}

- (void)printList {
    [self recurWithNode:self];
}

- (void)recurWithNode:(ListNode *)node {
    NSLog(@"%zd", node.value);

    if (node.next) {
        [self recurWithNode:node.next];
    }
}

- (void)printValue {
    NSLog(@"curValue: %zd", self.value);
}

@end
