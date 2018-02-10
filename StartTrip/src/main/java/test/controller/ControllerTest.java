package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import test.bean.BeanTest;
import test.model.ServiceTest;
import test.model.TestTable;

@Controller
public class ControllerTest {


	@Autowired
	private WebApplicationContext context;
	@Autowired
	private ServiceTest service;
	
	@RequestMapping(path = { "/test.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method(TestTable bean) {
		
		//test spring bean
//		System.out.println(bean);
		BeanTest b = (BeanTest) context.getBean("beanTest");
		b.setAge(10);
		b.setId(1);
		b.setName("Team1");
		System.out.println(b);
		
		//test hibernate
//		ServiceTest service=(ServiceTest)context.getBean("serviceTest");
//		TestTable test=new TestTable();
//		test.setId(6);
//		test.setName("Jeff");
//		service.insert(test);
		
		//test 參數
		service.insert(bean);
		return "test.success";
	}
}
