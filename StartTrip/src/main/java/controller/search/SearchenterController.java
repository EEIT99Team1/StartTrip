package controller.search;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;

@Controller
public class SearchenterController {

	// passenger
	@RequestMapping(path = "/Searchenter.controller", method = { RequestMethod.GET })
	public String order(PassengerBean pbean, OrdermanBean obean, 
			Model model1,HttpSession session, FlightorderBean fbean,
			String afirstName1,String alastName1,String phone1,
			String afirstName2,String alastName2,String phone2,
			String afirstName3,String alastName3,String phone3,
			String afirstName4,String alastName4,String phone4,
			String cfirstName1,String clastName1,String kidbirthday1,
			String cfirstName2,String clastName2,String kidbirthday2,
			String cfirstName3,String clastName3,String kidbirthday3,
			String cfirstName4,String clastName4,String kidbirthday4
			) {
		session.removeAttribute("abean1");
		session.removeAttribute("abean2");
		session.removeAttribute("abean3");
		session.removeAttribute("abean4");
		session.removeAttribute("cbean1");
		session.removeAttribute("cbean2");
		session.removeAttribute("cbean3");
		session.removeAttribute("cbean4");
		
		
		obean.setStutus(false);
		System.out.println(pbean);
		System.out.println(obean);
//
//		Map<String, String> errmsg = new HashMap<>();
//		model1.addAttribute("error", errmsg);
//
//		if (pbean.getFirstname() == null || pbean.getFirstname().trim().length() == 0) {
//			errmsg.put("errfirstname", "乘客姓氏不可空白");
//		}
//		if (pbean.getLastname() == null || pbean.getLastname().trim().length() == 0) {
//			errmsg.put("errlastname", "乘客名字不可空白");
//		}
//		if (pbean.getPhone() == null|| pbean.getPhone().trim().length() == 0) {
//		 errmsg.put("errphone", "聯絡電話不可空白");
//		 }
//		if(fbean.getChild()>=1) {
//			if (pbean.getKidbirthday() == null || 
//					pbean.getKidbirthday().trim().length() == 0) {
//				errmsg.put("errkidbirthday", "生日不可空白");
//			}
//		}
//		if (obean.getEmail() == null || obean.getEmail().trim().length() == 0) {
//			errmsg.put("erremail", "訂購人電子郵件不可空白");
//		}
//		if( obean.getEfirstname()==null ||  obean.getEfirstname().trim().length() == 0) {
//			errmsg.put("errefirstname", "聯絡人姓氏不可空白");
//		}
//		if (obean.getElastname() == null || obean.getElastname().trim().length() == 0) {
//			errmsg.put("errelastname", "聯絡人名字不可空白");
//		}
//		
//		if (errmsg.isEmpty()) {
			System.out.println("success");
			// passenger
			PassengerBean abean1 = new PassengerBean();
			abean1.setFirstname(afirstName1);
			abean1.setLastname(alastName1);
			abean1.setPhone(phone1);
			abean1.setKidbirthday(null);
			
			session.setAttribute("abean1", abean1);
			
			if(afirstName2!=null) {
				PassengerBean abean2 = new PassengerBean();
				abean2.setFirstname(afirstName2);
				abean2.setLastname(alastName2);
				abean2.setPhone(phone2);
				abean2.setKidbirthday(null);
				
				session.setAttribute("abean2", abean2);
				
				if(afirstName3!=null) {
					PassengerBean abean3 = new PassengerBean();
					abean3.setFirstname(afirstName3);
					abean3.setLastname(alastName3);
					abean3.setPhone(phone3);
					abean3.setKidbirthday(null);
					
					session.setAttribute("abean3", abean3);
					
					if(afirstName4!=null) {
						PassengerBean abean4 = new PassengerBean();
						abean4.setFirstname(afirstName4);
						abean4.setLastname(alastName4);
						abean4.setPhone(phone4);
						abean4.setKidbirthday(null);
						
						session.setAttribute("abean4", abean4);
					}
				}
			}
			if(cfirstName1!=null) {
				
				PassengerBean cbean1 = new PassengerBean();
				cbean1.setFirstname(cfirstName1);
				cbean1.setLastname(clastName1);
				cbean1.setPhone(null);
				cbean1.setKidbirthday(kidbirthday1);
				
				session.setAttribute("cbean1", cbean1);
				
				if(cfirstName2!=null) {
					PassengerBean cbean2 = new PassengerBean();
					cbean2.setFirstname(cfirstName2);
					cbean2.setLastname(clastName2);
					cbean2.setPhone(null);
					cbean2.setKidbirthday(kidbirthday2);
					
					session.setAttribute("cbean2", cbean2);
					
					if(cfirstName3!=null) {
						PassengerBean cbean3 = new PassengerBean();
						cbean3.setFirstname(cfirstName3);
						cbean3.setLastname(clastName3);
						cbean3.setPhone(null);
						cbean3.setKidbirthday(kidbirthday3);
						
						session.setAttribute("cbean3", cbean3);
						
						if(cfirstName4!=null) {
							PassengerBean cbean4 = new PassengerBean();
							cbean4.setFirstname(cfirstName4);
							cbean4.setLastname(clastName4);
							cbean4.setPhone(null);
							cbean4.setKidbirthday(kidbirthday4);
							
							session.setAttribute("cbean4", cbean4);
						}
					}
				}
			}

			// orderman
			session.setAttribute("obean", obean);
			
			FlightorderBean go1 =(FlightorderBean) session.getAttribute("go1");
			
			return "order.success";
			// return "order.error";
//		}

//		System.out.println("failed");

//		return "order.error";
	}
}
