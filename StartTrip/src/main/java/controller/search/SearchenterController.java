package controller.search;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;
import model.service.search.FlightorderService;
import model.service.search.OrdermanService;
import model.service.search.PassengerService;

@Controller
@RequestMapping(path = "/Searchenter.controller", method = { RequestMethod.POST })
public class SearchenterController {

	@Autowired
	private PassengerService passengerService = null;
	@Autowired
	private OrdermanService ordermanService = null;
	@Autowired
	private FlightorderService flightorderService = null;

	@Autowired
	private ApplicationContext context;

	// passenger
	public String passenger(PassengerBean bean, Model model, String prodaction, @RequestParam("wid") String temp) {

		Locale locale = LocaleContextHolder.getLocale();

		Map<String, String> errmsg = new HashMap<>();
		model.addAttribute("error", errmsg);

		if (bean.getFirstname() == null || bean.getFirstname().trim().length() == 0) {
			errmsg.put("errfirstname", "姓不可空白");
		}
		if (bean.getLastname() == null || bean.getLastname().trim().length() == 0) {
			errmsg.put("errlastname", "名字不可空白");
		}
		if (bean.getExpiry() == null) { // ||bean.getExpiry().trim().length()==0
			errmsg.put("errexpiry", "護照到期日不可空白");
		}
		if (bean.getPassport() == null || bean.getPassport().trim().length() == 0) {
			errmsg.put("errpassport", "護照號碼不可空白");
		}

		if ("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
			if (temp == null || temp.length() == 0) {
				errmsg.put("error", context.getMessage("product.wid.required", new String[] { prodaction }, locale));
			}
		}
		if (!errmsg.isEmpty() && errmsg != null) {
			System.out.println("failed");
			return "passenger.error";
		}

		if ("Select".equals(prodaction)) {
			PassengerBean result = passengerService.select(bean);
			model.addAttribute("select", result);
			return "passenger.error";

		} else if ("Insert".equals(prodaction)) {
			PassengerBean result = passengerService.insert(bean);
			if (result == null) {
				errmsg.put("action", "insert失敗");
			} else {
				model.addAttribute("insert", result);
			}
			return "passenger.error";

		} else if ("Update".equals(prodaction)) {
			boolean result = passengerService.update(bean);
			if (result == false) {
				errmsg.put("action", "Update失敗");
			} else {
				model.addAttribute("update", result);
			}
			return "passenger.error";
		} else if ("Delete".equals(prodaction)) {
			boolean result = passengerService.delete(bean);
			if (!result) {
				model.addAttribute("delete", 0);
			} else {
				model.addAttribute("delete", 1);
			}
			return "passenger.error";
		} else {
			errmsg.put("action", "unknow action: " + prodaction);
			return "passenger.error";
		}

	}

	// orderman
	public String orderman(OrdermanBean bean, Model model, String prodaction, @RequestParam("OrderId") String temp) {
		Locale locale = LocaleContextHolder.getLocale();

		Map<String, String> errmsg = new HashMap<>();
		model.addAttribute("error", errmsg);
		if (bean.getEmail() == null || bean.getEmail().trim().length() == 0) {
			errmsg.put("erremail", "訂購人的電子郵件不可空白");
		}

		if ("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
			if (temp == null || temp.length() == 0) {
				errmsg.put("error", context.getMessage("orderman.email.required", new String[] { prodaction }, locale));
			}
		}
		if (!errmsg.isEmpty() && errmsg != null) {
			System.out.println("failed");
			return "orderman.error";
		}

		if ("Select".equals(prodaction)) {
			OrdermanBean result = ordermanService.select(bean);
			model.addAttribute("select", result);
			return "orderman.error";

		} else if ("Insert".equals(prodaction)) {
			OrdermanBean result = ordermanService.insert(bean);
			if (result == null) {
				errmsg.put("action", "insert失敗");
			} else {
				model.addAttribute("insert", result);
			}
			return "orderman.error";

		} else if ("Update".equals(prodaction)) {
			boolean result = ordermanService.update(bean);
			if (result == false) {
				errmsg.put("action", "Update失敗");
			} else {
				model.addAttribute("update", result);
			}
			return "orderman.error";
		} else if ("Delete".equals(prodaction)) {
			boolean result = ordermanService.delete(bean);
			if (!result) {
				model.addAttribute("delete", 0);
			} else {
				model.addAttribute("delete", 1);
			}
			return "orderman.error";
		} else {
			errmsg.put("action", "unknow action: " + prodaction);
			return "orderman.error";
		}
	}

	// flightorder
	public String flightorder(FlightorderBean bean, Model model, String prodaction, 
			@RequestParam("wid") String temp) {

		Locale locale = LocaleContextHolder.getLocale();

		Map<String, String> errmsg = new HashMap<>();
		model.addAttribute("error", errmsg);

		if (bean.getStart() == null || bean.getStart().trim().length() == 0) {
			errmsg.put("erremail", "訂購人的電子郵件不可空白");
		}

		if ("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
			if (temp == null || temp.length() == 0) {
				errmsg.put("error",
						context.getMessage("flightorder.wid.required", new String[] { prodaction }, locale));
			}
		}
		if (!errmsg.isEmpty() && errmsg != null) {
			System.out.println("failed");
			return "flightorder.error";
		}

		if ("Select".equals(prodaction)) {
			FlightorderBean result = flightorderService.select(bean);
			model.addAttribute("select", result);
			return "flightorder.error";

		} else if ("Insert".equals(prodaction)) {
			FlightorderBean result = flightorderService.insert(bean);
			if (result == null) {
				errmsg.put("action", "insert失敗");
			} else {
				model.addAttribute("insert", result);
			}
			return "flightorder.error";

		} else if ("Update".equals(prodaction)) {
			boolean result = flightorderService.update(bean);
			if (result == false) {
				errmsg.put("action", "Update失敗");
			} else {
				model.addAttribute("update", result);
			}
			return "flightorder.error";
		} else if ("Delete".equals(prodaction)) {
			boolean result = flightorderService.delete(bean);
			if (!result) {
				model.addAttribute("delete", 0);
			} else {
				model.addAttribute("delete", 1);
			}
			return "flightorder.error";
		} else {
			errmsg.put("action", "unknow action: " + prodaction);
			return "flightorder.error";
		}
	}
}
