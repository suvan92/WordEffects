//
//  main.m
//  WordEffects
//
//  Created by Suvan Ramani on 2016-10-31.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        int operationNumber;
        char skip[3];
        
        while (YES) {
            
            // Get a string input from the user
            printf("Please insert a string: \n");
            fgets(inputChars, 255, stdin);
            
            
            printf("Your string is: %s\n", inputChars);
            
            // Convert char array into an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // remove \n from inputstring which was inserted by hitting enter after input
            inputString = [inputString substringToIndex:([inputString length]-1)];
            
            NSLog(@"%@", inputString);
            
            // Ask user to select an operation to perform
            printf("Please select an operation to perfrom: \n");
            printf("\n");
            printf("Available operations: \n");
            printf("1) Uppercase \n");
            printf("2) Lowercase: \n");
            printf("3) Numberize: \n");
            printf("4) Canadianize: \n");
            printf("5) Respond: \n");
            printf("6) De-space-it \n");
            printf("\n");
            printf("Enter an operation number: \n");
            scanf("%d", &operationNumber);
            fgets(skip, 3, stdin);
            
            NSUInteger lastChar;
            
            switch (operationNumber) {
                case 1:
                    // convert to an uppercase string
                    NSLog(@"%@", [inputString uppercaseString]);
                    break;
                
                case 2:
                    // convert to a lowercase string
                    NSLog(@"%@", [inputString lowercaseString]);
                    break;
                
                case 3:
                    // convert to number, if possible
                    [inputString integerValue];
                    NSLog(@"%ld", (long)[inputString integerValue]);
                    break;
                
                case 4:
                    // append ", eh?" at the end of the string
                    NSLog(@"%@", [inputString stringByAppendingString:@", eh?"]);
                    break;
                
                case 5:
                    
                    lastChar = (inputString.length - 1);
                    
                    if ([inputString characterAtIndex:lastChar] == '?') {
                        NSLog(@"I don't know.");
                    } else if ([inputString characterAtIndex:lastChar] == '!') {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                
                case 6:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                    
                default:
                    break;
            }
            
            printf("\n");
            
            
        }
        
        
    }
    return 0;
}
