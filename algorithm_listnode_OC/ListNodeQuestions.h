//
//  ListNodeQuestions.h
//  BeSuccess
//
//  Created by ElegantLiar on 2021/3/19.
//

#import <Foundation/Foundation.h>

#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListNodeQuestions : NSObject

/// 倒数第N个节点
- (ListNode *)kthToLastWithHead:(ListNode *)head k:(NSInteger)k;

/// 移除未排序链表中的重复节点。保留最开始出现的节点。
- (ListNode *)removeDuplicateNodes:(ListNode *)head;

/// 给定一个链表，旋转链表，将链表每个节点向右移动 k 个位置，其中 k 是非负数
- (ListNode *)rotateRightWithHead:(ListNode *)head k:(NSInteger)k;

/// 合并两个有序链表
- (ListNode *)mergeTwoListsWithListA:(ListNode *)listA listB:(ListNode *)listB;

/// 两两交换节点
- (ListNode *)swapPairsWithList:(ListNode *)head;

@end

NS_ASSUME_NONNULL_END
