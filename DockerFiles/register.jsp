<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <body>
        <form action="regForm" method="post">
            Name : <input type="text" name="name"> <br /> <br />
            Email : <input type="text" name="email"> <br /> <br />
            Password : <input type="text" name="password"> <br /> <br />
            Gender :
            <input type="radio" name="gender" /> Male
            <input type="radio" name="gender" /> Female
            City : 
            <select>
                <option>Select City</option>
                <opton value="delhi">Delhi</opton>
                <option value="mumbai">Mumbai</option>
                <option value="pune">Pune</option>
            </select>
            <br>
            <input type="submit" value="Register">
            
        </form>


    </body>

    </html>