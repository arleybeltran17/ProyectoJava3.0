package co.edu.sena.project2687365.model.repository;

import co.edu.sena.project2687365.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {

        Repository<User> repository =new UserRepositoryImpl();

        System.out.println("<============ saveObj Insert ============>");
        User userInsert = new User();
        userInsert.setUser_firstname("Felipe");
        userInsert.setUser_lastname("Torres");
        userInsert.setUser_email("Felitorres@hotmail.com");
        userInsert.setUser_password("Feli092Torres_920");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("Camilo");
        userInsert.setUser_lastname("Rojas");
        userInsert.setUser_email("Cmlrjs23@hotmail.com");
        userInsert.setUser_password("RojCam29018_2093");
        repository.saveObj(userInsert);

        System.out.println("<============ listAllObj ============>");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("<============ byIdObj ============>");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("<============ saveObj ============>");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("Juan");
        userUpdate.setUser_lastname("Mendez");
        userUpdate.setUser_email("mendezJ@hotmail.com");
        userUpdate.setUser_password("JUANMENDEZ29093-wpw");
        repository.saveObj(userUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("<============ deleteObj ============>");
        repository.deleteObj(1);
        repository.listAllObj().forEach(System.out::println);
    }

}
