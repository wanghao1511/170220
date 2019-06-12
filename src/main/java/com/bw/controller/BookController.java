package com.bw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bw.service.BookService;
import com.bw.utils.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class BookController {
	@Autowired
	private BookService service;

	@RequestMapping("list")
	public String getList(Model model, @RequestParam(defaultValue = "1") int pageNum,
			@RequestParam(defaultValue = "") String name) {

		int pageSize = 4;
		PageHelper.startPage(pageNum, pageSize);
		List list = service.getList(name);
		PageInfo info = new PageInfo(list);
		Page.fenye(model, info, "");
		model.addAttribute("list", list);
		model.addAttribute("name", name);
		return "list";
	}

	@RequestMapping("toadd")
	public String toadd() {
		return "add";
	}
}
