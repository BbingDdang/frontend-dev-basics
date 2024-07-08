package ch08.controller.api;

import java.util.Arrays;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ch08.dto.JsonResult;
import ch08.vo.UserVo;

@RestController
@RequestMapping("/api/user")
public class RestApiController {
	
	@PostMapping
	public JsonResult create(@RequestBody UserVo vo) {
		vo.setNo(10L);
		vo.setPassword("");
		
		return JsonResult.success(vo); 
	}
	
	@GetMapping
	public JsonResult read() {
		 
		return JsonResult.success(Arrays.asList(
			new UserVo(1L, "BD"),
			new UserVo(2L, "BD2"),
			new UserVo(3L, "BD3")
		));
	}
	
	@PutMapping("/{no}")
	public JsonResult update(
			@PathVariable("no") Long no,
			@RequestBody UserVo vo) {
		vo.setName("bbdd");
		vo.setPassword("");
		return JsonResult.success(vo);
	}
	
	@DeleteMapping("/{no}")
	public JsonResult delete(
			@PathVariable("no") Long no,
			@RequestBody UserVo vo,
			@RequestParam(value = "password", required=true, defaultValue="") String password) {
		System.out.println(password);
		return JsonResult.success(vo);
	}
}
