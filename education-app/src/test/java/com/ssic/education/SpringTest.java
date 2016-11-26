package com.ssic.education;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

public class SpringTest {

	public static void main(String[] args) throws ClassNotFoundException {

		// ClassPathResource classPathResource = new
		// ClassPathResource("com/ssic/education/tta.xml");
		//
		// DefaultListableBeanFactory factory = new
		// DefaultListableBeanFactory();
		//
		// XmlBeanDefinitionReader reader = new
		// XmlBeanDefinitionReader(factory);
		//
		// reader.loadBeanDefinitions(classPathResource);
		//
		// System.out.println(factory);
		//
		//
		// Object ob = factory.getBean("viewResolverCommon");
		//
		// System.out.println(factory.getBean("viewResolverCommon").getClass());

		ApplicationContext application = new ClassPathXmlApplicationContext(
				"com/ssic/education/tta.xml");

		System.out.println(application.getBean("viewResolverCommon"));

	}

}
