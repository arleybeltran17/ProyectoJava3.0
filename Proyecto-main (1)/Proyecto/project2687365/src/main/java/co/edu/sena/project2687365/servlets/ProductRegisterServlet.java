package co.edu.sena.project2687365.servlets;

import co.edu.sena.project2687365.model.Product;
import co.edu.sena.project2687365.model.User;
import co.edu.sena.project2687365.model.repository.ProductRepositoryImpl;
import co.edu.sena.project2687365.model.repository.Repository;
import co.edu.sena.project2687365.model.repository.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerProduct")

public class ProductRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //collect all form data
        String product_name= request.getParameter("product_name");
        float product_value = Float.parseFloat(request.getParameter("product_value"));
        Integer category_id= Integer.valueOf(request.getParameter("category_id"));

        //fill it up in a User bean
        Product product= new Product(product_name,product_value,category_id);

        //call Repository layer and save the user object to DB
        Repository<Product> repository= new ProductRepositoryImpl();
        int rows=0;
        try {
            rows=repository.saveObj(product);
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
