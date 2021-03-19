//
//  ViewController.m
//  algorithm_listnode_OC
//
//  Created by ElegantLiar on 2021/3/19.
//

#import "ViewController.h"
#import "ListNodeQuestions.h"

@interface ViewController ()

@end

@implementation ViewController {
    ListNodeQuestions *_question;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _question = [[ListNodeQuestions alloc] init];
    
    [self examGuard];
}

- (void)examGuard {

    ListNode *list = [[ListNode alloc] initListWithArray:@[@(1), @(1), @(2), @(2), @(3), @(3)]];
//    [list printList];
    
#pragma mark - 1
//    ListNode *node = [_question kthToLastWithHead:list k:1];
//    [node printValue];

#pragma mark - 2
//    ListNode *result = [_question removeDuplicateNodes:list];
//    [result printList];

#pragma mark - 3
//    ListNode *result = [_question rotateRightWithHead:list k:3];
//    [result printList];
    
#pragma mark - 4
//    ListNode *listA = [[ListNode alloc] initListWithArray:@[@(1), @(3), @(5), @(7), @(9)]];
//    ListNode *listB = [[ListNode alloc] initListWithArray:@[@(2), @(4), @(6), @(10), @(11), @(12)]];
//    ListNode *result = [_question mergeTwoListsWithListA:listA listB:listB];
//    [result printList];
    
#pragma mark - 5
//    输入：head = [1,2,3,4]
//    输出：[2,1,4,3]
    ListNode *listA = [[ListNode alloc] initListWithArray:@[@(1), @(2), @(3), @(4)]];
    [[_question swapPairsWithList:listA] printList];

}

@end
