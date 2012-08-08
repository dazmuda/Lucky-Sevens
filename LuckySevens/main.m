//
//  main.m
//  LuckySevens
//
//  Created by Stephanie Shupe on 8/7/12.
//  Copyright (c) 2012 Stephanie Shupe. All rights reserved.
//


//  * Lucky Sevens:
//* Write a program to compute the sum of all the integers between 1 and 1011
//both divisible by seven and, when the decimal digits are reversed, are still
//divisible by seven.


#import <Foundation/Foundation.h>






//method to convert integer to string

NSString *convert_integer_to_string(int i)
{
    NSString *converted_int = [NSString stringWithFormat:@"%d",i];
    return converted_int;
}






//method to get length of string
// we're returning a long, we're putting in a string

long get_length_of_string(NSString *string_for_len)
{
    long len = [string_for_len length];
    return len;
}





//method to reverse string

NSString *reverse_a_string(NSString *string_to_rev, long len)
{
    NSString *reversed_string = @"";
    for (int i = 1; i <= len; i++) {
        NSString *last_char = [string_to_rev substringWithRange:NSMakeRange((len-i), 1)];
        reversed_string = [reversed_string stringByAppendingString: last_char];
    }
    return reversed_string;
}





//method to convert reversed string to integer

long convert_rev_string_to_int(NSString *reversed_string)
{
    NSInteger reversed_int = [reversed_string integerValue];
    return reversed_int;
}





//method to sum i when i & reversed i divisible by 7

int sum_if_divisible (int beg, int end, int div)
{   int sum = 0;
    for (int i = beg; i<= end; i++){
        if (i % div ==0){
            NSString *int_as_string = convert_integer_to_string(i);
            long length = get_length_of_string(int_as_string);
            NSString *reversed_string = reverse_a_string(int_as_string, length);
            long reversed_string_as_int = convert_rev_string_to_int(reversed_string);
            if (reversed_string_as_int % div ==0 ) {
                sum += i;
            }
        }
    }
    return sum;
}




int main(int argc, const char * argv[]) {

    @autoreleasepool {
    
        int sum_of_div_by_7 = sum_if_divisible(1, 1011, 7);

        NSLog(@"%d",sum_of_div_by_7);
        
    return sum_of_div_by_7;
    }
}

    
    
    
    
//    int sum = 0;
//    // insert code here...
//    for (int i = 1; i <= 1011; i++){
//        //            int int_to_convert = i;
//        if (i % 7 == 0){
//            NSString *converted_int = [NSString stringWithFormat:@"%d",i];
//            
//            long len = [converted_int length];
//            //        NSLog(@"%ld",len);
//            
//            NSString *reversed_string = @"";
//            
//            for (int j = 1; j <= len; j++) {
//                NSString *last_char = [converted_int substringWithRange:NSMakeRange((len-j), 1)];
//                
//                reversed_string = [reversed_string stringByAppendingString: last_char];
//            }
//            //                NSLog(@"%@",reversed_string);
//            
//            NSInteger reversed_int = [reversed_string integerValue];
//            
//            if (reversed_int % 7 ==0 ) {
//                //                    NSLog(@"%d",i);
//                
//                sum += i;
//                NSLog(@"%d",sum);
//            }
//        }
//    }
//}

