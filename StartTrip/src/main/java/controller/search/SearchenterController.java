package controller.search;

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
	public String order(PassengerBean pbean, OrdermanBean obean, FlightorderBean fbean, Model model,
			HttpSession session) {

		obean.setStutus(false);
		System.out.println(pbean);
		System.out.println(obean);
		System.out.println(fbean);

		Map<String, String> errmsg = new HashMap<>();
		model.addAttribute("error", errmsg);

		if (pbean.getFirstname() == null || pbean.getFirstname().trim().length() == 0) {
			errmsg.put("errfirstname", "姓不可空白");
		}
		if (pbean.getLastname() == null || pbean.getLastname().trim().length() == 0) {
			errmsg.put("errlastname", "名字不可空白");
		}
		if (pbean.getExpiry() == null) {
			errmsg.put("errexpiry", "護照到期日不可空白");
		}
		// if (pbean.getPassport() == null || pbean.getPassport().trim().length() == 0)
		// {
		// errmsg.put("errpassport", "護照號碼不可空白");
		// }
		if (obean.getEmail() == null || obean.getEmail().trim().length() == 0) {
			errmsg.put("erremail", "訂購人的電子郵件不可空白");
		}

		if (!errmsg.isEmpty() && errmsg != null) {
			System.out.println("success");

			String firstname = pbean.getFirstname();
			session.setAttribute("firstname", firstname);

			String lastname = pbean.getLastname();
			session.setAttribute("lastname", lastname);

			String passport = pbean.getPassport();
			session.setAttribute("passport", passport);

			String email = obean.getEmail();
			session.setAttribute("email", email);

			System.out.println("firstname=" + firstname);
			System.out.println("lastname=" + lastname);
			System.out.println("passport=" + passport);
			System.out.println("email=" + email);

			// String firstname=pbean.getExpiry();
			// System.out.println("firstname="+firstname);
			// session.setAttribute("firstname",firstname);

			 return "order.success";
//			return "order.error";
		}

		System.out.println("failed");

		return "order.error";
	}
}
