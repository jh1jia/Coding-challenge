class Solution {
    public:
    int lengthOfLongestSubstring(string s) {
    vector<int> dict(256, -1);
    int res = 0, left = 0;
    for (int i = 0; i < s.size(); ++i) {
    if (m[s[i]] == -1 || m[s[i]] < left) {
    res = max(res, i - left + 1);
    }
    else {
    left = m[s[i]];
    }
    m[s[i]] = i;
    }
    return res;
    }
};
