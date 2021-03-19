//
//  ListNodeQuestions.m
//  BeSuccess
//
//  Created by ElegantLiar on 2021/3/19.
//

#import "ListNodeQuestions.h"

@implementation ListNodeQuestions

- (ListNode *)kthToLastWithHead:(ListNode *)head k:(NSInteger)k {
    
    if (!head) {
        return head;
    }
    
    ListNode *firstNode = head;
    ListNode *secondNode = nil;
    NSInteger steps = 0;
    
    while (firstNode) {
        
        firstNode = firstNode.next;
        if (secondNode) {
            secondNode = secondNode.next;
        }
        steps ++;
        
        if (!secondNode && steps == k) {
            secondNode = head;
        }
    }
    
    return secondNode;
}

- (ListNode *)removeDuplicateNodes:(ListNode *)head {
    
    if (!head) {
        return nil;
    }
    
    NSMutableDictionary *hash = @{}.mutableCopy;
    ListNode *curNode = head;
    ListNode *preNode = nil;
    while (curNode) {
        if ([hash objectForKey:@(curNode.value).stringValue]) {
            preNode.next = curNode.next;
        } else {
            [hash setObject:@(1) forKey:@(curNode.value).stringValue];
            preNode = curNode;
        }
        curNode = curNode.next;
    }
    
    return head;
}

- (ListNode *)rotateRightWithHead:(ListNode *)head k:(NSInteger)k {
    // 形成闭环
    // 找到新尾部，断开环
    
    NSInteger length = 0;
    ListNode *oldTail = head;
    ListNode *newTail = head;
    ListNode *newHead = nil;

    while (oldTail.next) { //求出长度，找到尾部
        oldTail = oldTail.next;
        length ++;
    }
    //形成闭环
    oldTail.next = head;
    
    // 找到新尾部 length - k % length - 1
    for (NSInteger i = 0; i < length - k % length - 1; i++) {
        newTail = newTail.next;
    }
    
    newHead = newTail.next;
    newTail.next = nil;
    
    return newHead;
}

- (ListNode *)mergeTwoListsWithListA:(ListNode *)listA listB:(ListNode *)listB {
    if (!listA) {
        return listB;
    }
    
    if (!listB) {
        return listA;
    }
    
    if (listA.value <= listB.value) {
        listA.next = [self mergeTwoListsWithListA:listA.next listB:listB];
        return listA;
    } else {
        listB.next = [self mergeTwoListsWithListA:listA listB:listB.next];
        return listB;
    }
}

- (ListNode *)swapPairsWithList:(ListNode *)head {
    ListNode *newHead = nil;
    newHead.next = head;
    ListNode *temp = newHead;


    return head;
}


@end
