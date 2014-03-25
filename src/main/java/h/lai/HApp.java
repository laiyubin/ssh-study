package h.lai;

import com.lai.dao.UserDao;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 * User: wlai
 * Date: 10/15/13
 * Time: 5:21 PM
 */
public class HApp {
    public static void main(String[] args) {
        SessionFactory sf=HibernateUtil.getSessionFactory();
        UserDao dao=new UserDao();
        dao.findAll();


    }

}
