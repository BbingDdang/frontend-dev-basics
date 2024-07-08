package ch08.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch08.dto.JsonResult;
import ch08.vo.GuestbookVo;

@Controller
@RequestMapping("/api")
public class ApiController {
	
	@ResponseBody
	@GetMapping("/text")
	public String text() {
		return "Text 데이터";
	}
	
	@ResponseBody
	@GetMapping("/html")
	public String html() {
		return "<h1>AJAX 연습</h1><p>HTML 데이터</p>";
	}
	
	@ResponseBody
	@GetMapping("/json1")
	public JsonResult json1() {
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(1L);
		vo.setName("bbingddang");
		vo.setContents("yappy~");
		return JsonResult.success(vo);
	}
	
	@ResponseBody
	@PostMapping("/json2")
	public JsonResult json2(GuestbookVo vo) {
		// Service -> Repository : DB Insert 성공한 후,
		vo.setNo(1L);
		vo.setPassword("");
		vo.setReg_time("2024-07-08 10:00:00");
		return JsonResult.success(vo);
	}
	
	@ResponseBody
	@PostMapping("/json3") //-> @RequestBody를 해줘야 data가 들어왕
	public JsonResult json3(@RequestBody GuestbookVo vo) {
		// Service -> Repository : DB Insert 성공한 후,
		vo.setNo(1L);
		vo.setPassword("");
		vo.setReg_time("2024-07-08 10:00:00");
		return JsonResult.success(vo);
	}
}
