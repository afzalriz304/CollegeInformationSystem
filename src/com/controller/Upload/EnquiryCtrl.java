package com.controller.Upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;



/**
 * Servlet implementation class EnquiryCtrl
 */
@WebServlet("/enquiryCtrl")
public class EnquiryCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	// private static final String UPLOAD_DIRECTORY = "";
	private String tempPath;   
	private String filePath;
	private File uploadDir; 
	private boolean isMultiPart = false;
	private int maxFileSize = 5000 * 1024;
	private int maxMemSize = 10000 * 1024;
	private File file ;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		filePath = getServletContext().getInitParameter("file");
		System.out.println("PAth of file is : "+filePath);
		
		tempPath = getServletContext().getInitParameter("tmp");
		System.out.println("Temp path is : "+tempPath);
		
		/* 
		MultipartRequest m = new MultipartRequest(request, filePath);
		System.out.println(m);
		out.print("successfully uploaded"); */
		
		//Part part = request.getPart("file");
		
		
	}
	// get the location where it is stored
			
			
	
	/*public void init()
	{
		*/
		  
 
	
		
		/*filePath = getServletContext().getRealPath("")
	            + File.separator + UPLOAD_DIRECTORY;
	    // creates the directory if it does not exist
	    uploadDir = new File(filePath);
	    if (!uploadDir.exists()) {
	        uploadDir.mkdir();
	    }
	    System.out.println("File Path is : "+filePath);
	    
	}
   
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public EnquiryCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	this.doPost(req, resp);
    }
    

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
		
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		boolean check = true;
		
		PrintWriter out = response.getWriter();
			//out = response.getWriter();
			
			
			isMultiPart = ServletFileUpload.isMultipartContent(request);
			System.out.println("multi part : "+isMultiPart);
			// if file is not uploaded , get other values from request without parsing it
			if(!isMultiPart){
				
				System.out.println("not multi part");	
			}
			// if file is uploaded , then parse request and upload all data
			else {
				
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// maximum size that will be stored in memory
			    factory.setSizeThreshold(maxMemSize);
			     // Location to save data that is larger than maxMemSize.
			    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
				
			    // Create a new file upload handler
			    ServletFileUpload upload = new ServletFileUpload(factory);
			      // maximum file size to be uploaded.
			    upload.setSizeMax( maxFileSize );
			      
			      
			      try{
			          // Parse the request to get file items.
			          List fileItems = upload.parseRequest(request);
			          System.out.println("File Items is : "+fileItems);
			          // Process the uploaded file items
			          Iterator i = fileItems.iterator();
			          System.out.println("Iterator Object is : "+i.toString());
			          
			          while ( i.hasNext () ) 
			          {
			             FileItem fi = (FileItem)i.next();
			             
			             System.out.println("File Item is : "+fi);
			             if ( !fi.isFormField () )	
			             {
			                // Get the uploaded file parameters
			            	if("file".equals(fi.getFieldName())){
			            		if(!(fi.getName() == null || fi.getName().isEmpty() || fi.getSize() == 0)){
			            			
			            		
			            	
					                
					                String fileName = fi.getName();
					                
					                
					                System.out.println("File Name : "+fileName);
					                
					                String contentType = fi.getContentType();
					                
					                System.out.println("Content Type : "+contentType);
					                boolean isInMemory = fi.isInMemory();
					                
					                System.out.println("Is is Memory "+isInMemory);
					                
					                long sizeInBytes = fi.getSize();
					                
					                System.out.println("Size in bytes : "+sizeInBytes);
					                
					                // Write the file
					                if( fileName.lastIndexOf("\\") >= 0 ){
					                   file = new File( filePath + 
					                   fileName.substring( fileName.lastIndexOf("\\"))) ;
					                }else{
					                   file = new File( filePath + 
					                   fileName.substring(fileName.lastIndexOf("\\")+1)) ;
					                }
					                fi.write( file ) ;
					                
					                System.out.println("path to upload is : "+filePath+File.separator+fileName);
					                
			            		}
			            	
			             
			             
			}
			
			             }
			          }
		
}catch(Exception e){
	System.out.println(e.getMessage());
}
}
*/			
}


		
		
