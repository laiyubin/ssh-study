import com.lai.dao.RoleDao;
import com.lai.dao.UserDao;
import com.lai.entities.Role;
import com.lai.entities.User;
import com.lai.services.SecureService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

/**
 * User: wlai
 * Date: 8/31/13
 * Time: 5:20 PM
 */
public class App {
    public static void test(int ...ids){
        for(int id: ids){
            System.out.println(id);
        }
    }

    public static void main(String[] args) {

         int[] ids=new int[]{1,23,33};
        test(ids) ;

       /* ApplicationContext appContext =
                new ClassPathXmlApplicationContext("applicationContext.xml");

//        SecureService ss = (SecureService) appContext.getBean("secureService");
        UserDao ss=(UserDao)appContext.getBean("userDao");
        List<User> users = ss.findAll();
        for (User u : users) {
            System.out.println(u.getName());
        }
        User user=users.get(0);
        user.setPassword("lai33333");
        ss.save(user);*/


        //Test @version
        /*User user = dao.getUserById(2);

        User user2 = dao.getUserById(2);
        user.setPassword("122223");
        user.setPassword("122224");
        try {
            dao.updateUser(user);
        } catch (Exception e) {
            System.out.println("111"+e);
        }
        try {
            dao.updateUser(user2);
        } catch (Exception e) {
            System.out.println(e);
        }*/
        /*
        User user=dao.getUserByUsername("lai");
        Role role=roleDao.getRoleByRolename("ROLE_ADMIN");
        List<Role> roles=new ArrayList<Role>();
        roles.add(role);
        user.setRoles(roles);
        dao.updateUser(user);
        */
       /* Role role=new Role();
        role.setName("ROLE_ADMIN");

        roleDao.addRole(role);*/

        System.out.println("Done");
    }
}
