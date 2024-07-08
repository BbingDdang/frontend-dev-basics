package ch08.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class ApiTestController {
	
	@GetMapping("/test")
	public String text() {
		return "test";
	}
	
	@GetMapping("/html")
	public String html() {
		return "html";
	}
	
	@GetMapping("/json1")
	public String json1() {
		return "json1";
	}
	
	@GetMapping("/json2")
	public String json2() {
		return "json2";
	}
	
	@GetMapping("/json3")
	public String json3() {
		return "json3";
	}
	
	@GetMapping("/json4")
	public String json4() {
		return "json4";
	}
	
	
}
