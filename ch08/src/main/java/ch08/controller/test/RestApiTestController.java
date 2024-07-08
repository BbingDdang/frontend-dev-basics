package ch08.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RestApiTestController {
	
	@GetMapping("/test/rest")
	public String test() {
		return "rest-test";
	}
}
