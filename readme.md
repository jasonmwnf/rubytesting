We want to write a class that deals with phone numbers in the US. Think of how 
to approach, write some tests, then implement it. 1 (123) 456-7890

Your todo: think about the above requirement, and write out more specific requirements/specifications in English. 

- If phone number contains non-numeric, return nil. 
- If phone number is 10 digits, assume it's valid.
- If phone number is 11 digit numberic, strip the 1. If it doesn't start with 1, return nil.
- If phone number is greater than 11 digits, return nil. 
- If phone number is less than 10 digits, return nil. 