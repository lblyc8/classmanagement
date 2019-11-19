package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.Student;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.InputStream;

import static org.junit.Assert.*;

public class StudentDaoTest {

    public StudentDao studentDao;
    public SqlSession sqlSession;

    @Before
    public void setUp() throws Exception {
        String resource = "applicationContext-test.xml";
        InputStream is = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        sqlSession = sqlSessionFactory.openSession();
//        this.userDao = new UserDaoImpl(sqlSession);
        this.studentDao = sqlSession.getMapper(StudentDao.class);
    }

    @Test
    public void findStudent() {
        System.out.println(this.studentDao.findStudent("16080501026","Peter"));
    }
}