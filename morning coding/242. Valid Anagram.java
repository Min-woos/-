class Solution {
public:
    bool isAnagram(string s, string t) {
    unordered_map<char,int> mp;
        int sSize = s.size();
        int tSize = t.size();
        
        if(sSize != tSize){
            return false;
        }
        for(int i=0; i<sSize; i++) {
            mp[s[i]]++; 
            mp[t[i]]--; 
        }
        for(int j =0; j < sSize; j++){
            if(mp[s[j]] != 0){
                return false;
            }
        }
        return true;
    }
};