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
	public String deletePicture(String id){
		String ApplicationRoot=servletContext.getRealPath("/")+"image/backstage/";
		String Path=ApplicationRoot;
		File file=new File(Path);
		File list[]=file.listFiles();
		
		for(int i=0,max=list.length;i<max;i++){
			if(list[i].getName().equals(id)) {
				list[i].delete();
				for(int j=(i+1);j<max;j++) {
					String fileName=list[j].getName();
					String viceName=fileName.substring(fileName.indexOf("."));
					String newName=j+viceName;
					list[j].renameTo(new File(Path+newName));
				}
				break;
			}
		}
		return "playWallView";
	}
}
