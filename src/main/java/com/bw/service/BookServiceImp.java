package com.bw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.mapper.BookMapper;

@Service
public class BookServiceImp implements BookService {
	@Autowired
	private BookMapper mapper;

	public List getList(String name) {
		// TODO Auto-generated method stub
		return mapper.getList(name);
	}

}
