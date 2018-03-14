package controller.house;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.bean.HouseBean;

/**
 * Servlet implementation class picture
 */
@WebServlet("/page/House/picture")
public class picture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//ServletContext servletContext = this.getServletConfig().getServletContext();
		String AppContextRoot = request.getServletContext().getRealPath("/")+"image/House/";
		String filePath = AppContextRoot;
		System.out.println(filePath);
		int count=new File(filePath).listFiles().length;
		System.out.println(count);
		File file ;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 5000 * 1024;
		HttpSession session = request.getSession();
		HouseBean bean =new HouseBean();
		bean=(HouseBean) session.getAttribute("HouseLogin");
		
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
						count++;
						// Write the file
						file = new File(filePath+bean.getName().trim()
								+fileName.substring(fileName.lastIndexOf("."))) ;
                         System.out.println(fileName.substring(fileName.lastIndexOf(".")));
                         System.out.println(count);
                         System.out.println(fileName);
						fi.write( file ) ;
					}
				}
			} 
			catch(Exception ex) {
				ex.printStackTrace();
			}
			request.getRequestDispatcher(
					"/page/House/BackstageUpdateHouse.jsp").forward(request, response);
		
			
			
			
			
	}

}
