package com.KoreaIT.bjw.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.KoreaIT.bjw.demo.service.ArticleService;
import com.KoreaIT.bjw.demo.service.BoardService;
import com.KoreaIT.bjw.demo.vo.Rq;

@Controller
public class ReactionPointController {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private Rq rq;

 
	
}

 