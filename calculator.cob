       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculator.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM1         PIC 9(5) VALUE ZEROS.
       77 NUM2         PIC 9(5) VALUE ZEROS.
       77 RESULT       PIC 9(10) VALUE ZEROS.
       77 CHOICE       PIC 9 VALUE ZEROS.

       PROCEDURE DIVISION.
       DISPLAY "Welcome to the COBOL Calculator by Jonathan Taylor!".
       DISPLAY "Enter the first number: ".
       ACCEPT NUM1.
       DISPLAY "Enter the second number: ".
       ACCEPT NUM2.
       DISPLAY "Choose an operation:".
       DISPLAY "1. Add".
       DISPLAY "2. Subtract".
       DISPLAY "3. Multiply".
       DISPLAY "4. Divide".
       DISPLAY "Enter your choice (1-4): ".
       ACCEPT CHOICE.

       PERFORM VARYING CHOICE FROM 1 BY 1 UNTIL CHOICE > 4
           EVALUATE CHOICE
               WHEN 1
                   ADD NUM1 TO NUM2 GIVING RESULT
                   DISPLAY "The result of adding " NUM1 " and " NUM2 " is " RESULT
               WHEN 2
                   SUBTRACT NUM2 FROM NUM1 GIVING RESULT
                   DISPLAY "The result of subtracting " NUM2 " from " NUM1 " is " RESULT
               WHEN 3
                   MULTIPLY NUM1 BY NUM2 GIVING RESULT
                   DISPLAY "The result of multiplying " NUM1 " and " NUM2 " is " RESULT
               WHEN 4
                   IF NUM2 = 0
                       DISPLAY "Division by zero is not allowed."
                   ELSE
                       DIVIDE NUM1 BY NUM2 GIVING RESULT
                       DISPLAY "The result of dividing " NUM1 " by " NUM2 " is " RESULT
                   END-IF
               WHEN OTHER
                   DISPLAY "Invalid choice! Please enter a number between 1 and 4."
           END-EVALUATE
       END-PERFORM.

       STOP RUN.
