package co.edu.sena.project2687365.servlets;

import co.edu.sena.project2687365.HelloServlet;
import co.edu.sena.project2687365.model.Category;
import co.edu.sena.project2687365.model.User;
import co.edu.sena.project2687365.model.repository.CategoryRepositoryImpl;
import co.edu.sena.project2687365.model.repository.Repository;
import co.edu.sena.project2687365.model.repository.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerCategory")

public class CategoryRegisterServlet extends HelloServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //collect all form data
        String category_name= request.getParameter("category_name");

        //fill it up in a User bean
        Category category=new Category(category_name);

        //call Repository layer and save the user object to DB
        Repository<Category> repository= new CategoryRepositoryImpl();
        int rows=0;
        try {
            rows=repository.saveObj(category);
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
