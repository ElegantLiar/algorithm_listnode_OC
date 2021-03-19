//
//  ListNode.h
//  BeSuccess
//
//  Created by ElegantLiar on 2021/3/19.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

- (instancetype)initListWithArray:(NSArray <NSNumber *> *)array;

@property (nonatomic, strong) ListNode *next;
@property (nonatomic, assign) NSInteger value;

- (void)printList;
- (void)printValue;

@end

