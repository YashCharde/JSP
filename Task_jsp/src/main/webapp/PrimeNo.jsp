<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Prime Numbers</title>
</head>
<body>
    <h1>Prime Numbers from 1 to 100</h1>
    <ul>
        <% 
            for (int num = 1; num <= 100; num++) {
                boolean isPrime = true;

                if (num < 2) {
                    isPrime = false;
                } else {
                    for (int i = 2; i <= Math.sqrt(num); i++) {
                        if (num % i == 0) {
                            isPrime = false;
                            break;
                        }
                    }
                }

                if (isPrime) {
        %>
                    <%= num %>
        <% 
                }
            } 
        %>
    </ul>
</body>
</html>
