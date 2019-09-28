{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab560
\pard\pardeftab560\slleading20\partightenfactor0

\f0\fs24 \cf0 /**\
Given an array of integers, find if the array contains any duplicates.\
Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.\
Example 1:\
Input: [1,2,3,1]\
Output: true\
\
Example 2:\
Input: [1,2,3,4]\
Output: false\
\
Example 3:\
Input: [1,1,1,3,3,4,3,2,4,2]\
Output: true\
\
Idea: traverse the array and use Set to check duplicates.\
Time Complexity: O(n), Space Complexity: O(n) \
*/\
\
func containsDuplicate(_ nums: [Int]) -> Bool \{\
    return nums.count > Set(mums).count\
\}\
}