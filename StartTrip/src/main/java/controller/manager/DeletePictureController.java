package controller.manager;

import java.io.File;

import javax.servlet.ServletContext;

import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DeletePictureController {

	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(path="/DeletePicture.controller",method= {RequestMethod.GET})
	@ResponseBody
	public String deletePicture(String id){
		String ApplicationRoot=servletContext.getRealPath("/")+"image/backstage/"+id;
		String Path=ApplicationRoot;
		System.out.println(Path);
		return "";
	}
}
