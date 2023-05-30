package co.edu.sena.project2687365.servlets;

import co.edu.sena.project2687365.model.User;
import co.edu.sena.project2687365.model.repository.Repository;
import co.edu.sena.project2687365.model.repository.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerUser")

public class UserRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //collect all form data
        String user_firstname= request.getParameter("firstname");
        String user_lastname= request.getParameter("lastname");
        String user_email= request.getParameter("email");
        String user_password= request.getParameter("password");

        //fill it up in a User bean
        User user= new User(user_firstname, user_lastname, user_email, user_password);

        //call Repository layer and save the user object to DB
        Repository<User> repository= new UserRepositoryImpl();
        int rows=0;
        try {
            rows=repository.saveObj(user);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // prepare an information message for User abot success or failure of the operation
        String infoMessage= null;
        if(rows==0){
            System.out.println("Ocurrio Un Error");
        }else {
            System.out.println("Regitro Exitoso");
        }
    //todo write the message back to the page in client browser

    }
}
