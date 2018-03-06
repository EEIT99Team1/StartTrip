package controller.manager;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FileUpLoadController {
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(path="/FileUpLoad.controller",method= {RequestMethod.POST})
	public String method(HttpServletRequest request) {
		String AppContextRoot = servletContext.getRealPath("/");
		String filePath = AppContextRoot + "image/backstage/";
		
		System.out.println(filePath);
		
		File file ;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 5000 * 1024;
		
		//https://read01.com/zh-tw/yOAL2O.html#.Wp4O_mpuaUk
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);
		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("c:\\temp"));
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximum file size to be uploaded.
		upload.setSizeMax( maxFileSize );
			try { 
			// Parse the request to get file items.
			List<FileItem> fileItems = upload.parseRequest(request);
			// Process the uploaded file items
			Iterator<FileItem> i = fileItems.iterator();
				while ( i.hasNext () ) {
				FileItem fi = i.next();
					if ( !fi.isFormField() ) {
						// Get the uploaded file parameters
						//String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						//boolean isInMemory = fi.isInMemory();
						//long sizeInBytes = fi.getSize();
						
						// Write the file
						file = new File(filePath+fileName) ;
						System.out.println(filePath+fileName);
						fi.write( file ) ;
					}
				}
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		return "uploadView";
	}
	
	@RequestMapping(path="/FileUpLoad.controller",method= {RequestMethod.GET})
	@ResponseBody
	public String getPitcher(){
		String AppContextRoot = servletContext.getRealPath("/");
		String filePath = AppContextRoot + "image/backstage/";
		File file;
		file=new File(filePath);
		File listFile[]=file.listFiles();
		for(int i=0,max=listFile.length;i<max;i++) {
			String name=listFile[i].getName();
			System.out.println(name);
		}
		return "loo";
	}
}
