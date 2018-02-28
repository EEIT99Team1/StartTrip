package model.service.search;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Iterator;

import javax.servlet.ServletContext;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.FileRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConnectionSaber {

	@Autowired
	private ServletContext servletContext;
	

	public String createSession() {
		PostMethod post = null;
		try {
			String soapResponseData = "fail";
			String endpoint = "https://webservices.havail.sabre.com";
			//取得應用系統在硬碟上的位置
			String realPath=servletContext.getRealPath("/");
			// 讀取 request_message
			SAXReader reader = new SAXReader();
			File file = new File(realPath+"callxml/CreateRequest.xml");
			Document doc = reader.read(file);
			RequestEntity entity = new FileRequestEntity(file, "text/xml; charset=utf-8");

			// HTTP POST 請求物件
			post = new PostMethod(endpoint);
			post.setRequestEntity(entity);
			post.setRequestHeader("SOAPAction", "");
			post.setRequestHeader("Content-type", "text/xml; charset=utf-8");
			// post.setRequestHeader("Content-Length", entity.getContentLength() + "");
			HttpClient httpclient = new HttpClient();
			int result = httpclient.executeMethod(post);
			// 取得回傳字串
			soapResponseData = post.getResponseBodyAsString();
			// 從回傳字串中 取出BinarySecurityToken
			int beginIndex = soapResponseData.indexOf("Shared"),
					endIndex = soapResponseData.indexOf("</wsse:BinarySecurityToken>");
			String binarySecurityToken = soapResponseData.substring(beginIndex, endIndex);
			System.out.println("binarySecurityToken="+binarySecurityToken);
			return binarySecurityToken;
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		} finally {
			post.setRequestHeader("SOAPAction", "CloseSession");
			post.releaseConnection();
		}

		return null;
	}

	public void requestSession(String BinarySecurityToken) {
		String GOTIME="2018-03-03T11:00:00";
		String BACKTIME="2018-03-06T11:00:00";
		String GOPLACE="TPE";
		String ENDPLACE="HKG";
		String Cabin="Y";
		String ADULT="2";
		String CHILD="1";
		
		PostMethod post = null;
		System.out.println("requestSession------------------");
		try {
			String soapResponseData = "fail";
			String endpoint = "https://webservices.havail.sabre.com";

			//取得應用系統在硬碟上的位置
			String realPath=servletContext.getRealPath("/");
			// 讀取 request_message
			File file = new File(realPath+"callxml/BargainFinderMaxRQ.xml");
			SAXReader reader = new SAXReader();
			// 取得xml
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			// 輸入BinarySecurityToken
			Element eBinarySecurityToken = root.element("Header").element("Security").element("BinarySecurityToken");
			eBinarySecurityToken.setText(BinarySecurityToken);
			// 取得OriginDestinationInformation標籤(此標籤內含搜尋資訊)
			Iterator<Element> eTicket = root.element("Body").element("OTA_AirLowFareSearchRQ").elementIterator();
			while (eTicket.hasNext()) {
				Element temp = eTicket.next();
				if (temp.getName().equals("OriginDestinationInformation")
						&& temp.attributeValue("RPH").equals("1")) {
					// 設定出發時間<DepartureDateTime>{{{GOTIME}}}</DepartureDateTime>
					temp.element("DepartureDateTime").setText(GOTIME);
					// 設定出發地<OriginLocation LocationCode="HKG" LocationType="C"/>
					temp.element("OriginLocation").addAttribute("LocationCode", GOPLACE);
					// 設定目的地<DestinationLocation LocationCode="TPE" LocationType="C"/>
					temp.element("DestinationLocation").addAttribute("LocationCode", ENDPLACE);
				}else if(temp.getName().equals("OriginDestinationInformation")
						&& temp.attributeValue("RPH").equals("2")) {
					// 設定出發時間<DepartureDateTime>{{{GOTIME}}}</DepartureDateTime>
					temp.element("DepartureDateTime").setText(BACKTIME);
					// 設定出發地<OriginLocation LocationCode="HKG" LocationType="C"/>
					temp.element("OriginLocation").addAttribute("LocationCode", ENDPLACE);
					// 設定目的地<DestinationLocation LocationCode="TPE" LocationType="C"/>
					temp.element("DestinationLocation").addAttribute("LocationCode", GOPLACE);
				}else if(temp.getName().equals("TravelPreferences")) {
					temp.element("CabinPref").addAttribute("Cabin", Cabin);
				}
			}

			// 設定大人小孩 人數
			Element eSeat = root.element("Body").element("OTA_AirLowFareSearchRQ").element("TravelerInfoSummary")
					.element("AirTravelerAvail");
			Iterator<Element> iter = eSeat.elementIterator();
			while (iter.hasNext()) {
				Element temp = iter.next();
				if (temp.attributeValue("Code").equals("ADT")) {
					temp.addAttribute("Quantity", ADULT);
				}
				if (temp.attributeValue("Code").equals("CNN")) {
					temp.addAttribute("Quantity", CHILD);
				}
			}

			System.out.println(doc.asXML());

			System.out.println("------------");

			RequestEntity entity = new StringRequestEntity(doc.asXML(), "text/xml", "utf-8");

			System.out.println(entity);
			// HTTP POST 請求物件

			post = new PostMethod(endpoint);
			post.setRequestEntity(entity);
			post.setRequestHeader("SOAPAction", "");
			post.setRequestHeader("Content-type", "text/xml; charset=utf-8");
			// post.setRequestHeader("Content-Length", entity.getContentLength() + "");
			HttpClient httpclient = new HttpClient();

			int result = httpclient.executeMethod(post);
			System.out.println("Response status code: " + result);
			System.out.println("Response body: ");
			System.out.println(soapResponseData = post.getResponseBodyAsString());
			
			System.out.println(realPath+"output/02Response.xml");
			// ---------------------------------------------------------
			 OutputStream os=new FileOutputStream("d:\\02Response.xml");
			 OutputStreamWriter osw=new OutputStreamWriter(os);
			 BufferedWriter bw=new BufferedWriter(osw);
			
			 bw.write(soapResponseData);
			 bw.flush();
			
			 bw.close();
			 osw.close();
			 os.close();

		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		} finally {
			post.setRequestHeader("SOAPAction", "CloseSession");
			post.releaseConnection();
		}

	}

	public void closeSession(String BinarySecurityToken) {
		PostMethod post = null;
		System.out.println("closeSession------------------");
		try {
			String soapResponseData = "fail";
			String endpoint = "https://webservices.havail.sabre.com";

			//取得應用系統在硬碟上的位置
			String realPath=servletContext.getRealPath("/");
			// 讀取 request_message
			SAXReader reader = new SAXReader();
			File file = new File(realPath+"callxml/CloseSession.xml");
			Document doc = reader.read(file);
			// "Header","Security","BinarySecurityToken"
			Element e1 = doc.getRootElement().element("Header").element("Security").element("BinarySecurityToken");
			e1.setText(BinarySecurityToken);
			// RequestEntity entity = new FileRequestEntity(file, "text/xml;charset=utf-8");
			StringRequestEntity entity = new StringRequestEntity(doc.asXML(), "text/xml", "utf-8");
			// HTTP POST 請求物件
			post = new PostMethod(endpoint);
			post.setRequestEntity(entity);
			post.setRequestHeader("SOAPAction", "");
			post.setRequestHeader("Content-type", "text/xml; charset=utf-8");
			// post.setRequestHeader("Content-Length", entity.getContentLength() + "");
			HttpClient httpclient = new HttpClient();

			int result = httpclient.executeMethod(post);
			System.out.println("Response status code: " + result + "  close success");
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		} finally {
			post.setRequestHeader("SOAPAction", "CloseSession");
			post.releaseConnection();
		}
	}
}
