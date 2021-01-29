//
//  Lab.swift
//  DictionariesLab
//
//  Created by Kevin McQuown on 1/29/21.
//

import Foundation

struct Lab {
    // Given a dictonary, return the integer stored at a specified key. Return nil if the key does not exist
    func getValueForKey(key: String, dictionary: [String: Int]) -> Int? {
        // ----  Your code here ----
        return dictionary[key]
        // --------------------------
    }

    // Create a new dictionary where the key is a string and the values are Doubles
    // Add 3 key value pairs, where the keys are pi, c and e respectively and the values associated
    // with each are 3.1415, 186282, 2.718
    func newDictionary() -> [String: Any] {
        // ----  Your code here ----
        let result : [String: Double] = ["pi": 3.1415, "c": 186282, "e": 2.718]
        return result
        // --------------------------
    }

    // Return all the keys of the input dictionary in alphabetical order
    func allKeys(dictionary: [String: Int]) -> [String] {
        // ----  Your code here ----
        return dictionary.keys.sorted()
        // --------------------------
    }

    // Given two dictionaries, return a single dictionary that is the combination of both
    func mergeTheTwoDictionaries(dict: [String: Int], dict2: [String: Int]) -> [String: Int] {
        // ----  Your code here ----
        var result = dict
        for (key, value) in dict2 {
            result[key] = value
        }
        return result
        // --------------------------
    }
    
    // Given an array of strings as keys, remove those keys from the supplied dictionary and return the resulting dictionary
    func removeKeysFromDict(keys: [String], dictionary: [String: Int]) -> [String: Int] {
        // ----  Your code here ----
        var result = dictionary
        for key in keys {
            result.removeValue(forKey: key)
        }
        return result
        // --------------------------
    }
    
    // Check to see if the value provided is in the supplied dictionary.  If so, return the key that has that value otherwise return nil.
    func isValueInDictionary(value: Int, dictionary: [String: Int]) -> String? {
        // ----  Your code here ----
        let result = dictionary.filter {$0.value == value}
        if result.count > 0 {
            return result.keys.first!
        } else {
            return nil
        }
        // --------------------------
    }
}
