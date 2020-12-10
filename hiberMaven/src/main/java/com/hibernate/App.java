package com.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Project Started...." );
       
//        Configuration cfg = new Configuration();
//        cfg.configure();
//        SessionFactory factory = cfg.buildSessionFactory();
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        //factory.getCurrentSession();
        
        
        
        //create student
        
        Student st =new Student();
        st.setId(004);
        st.setName("Pragya Shrivatsav");
        st.setMobile("9690453822");
        st.setCity("Varanasi");
        System.out.println(st);
        //Hibernate 
        Session sec	= factory.openSession();
        ///
        
        Transaction tx = sec.beginTransaction();
        sec.save(st);
        //sec.getTransaction().commit();
        tx.commit();
        sec.close();
        
    }
}
