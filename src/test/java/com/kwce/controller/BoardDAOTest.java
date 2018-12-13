package com.kwce.controller;

import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kwce.dao.BoardDAO;
import com.kwce.domain.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {
	@Autowired
	private BoardDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test @Ignore
	public void testCreate() throws Exception {
		BoardVO board = new BoardVO();
		board.setTitle("���ο� ���� �ֽ��ϴ�.");
		board.setContent("���ο� ���� �ֽ��ϴ�.");
		board.setWriter("2017202088");
		dao.create(board);
	}
	
	@Test @Ignore
	public void testRead() throws Exception {
		logger.info(dao.read(206).toString());
	}
	
	@Test @Ignore
	public void testUpdate() throws Exception {
		BoardVO board = new BoardVO();
		board.setBno(206);
		board.setTitle("������ ���Դϴ�.");
		board.setContent("���� �׽�Ʈ");
		dao.update(board);
	}
	
	@Test @Ignore
	public void testDelete() throws Exception {
		dao.delete(206);
	}

	@Before
	public void testTenCreate() throws Exception {
		BoardVO board = new BoardVO();
		for(int i=0; i<10; i++) {
			board.setTitle(i+"��° ���� �־����ϴ�.");
			board.setContent("���ο� ���� �ֽ��ϴ�.");
			board.setWriter("2017202088");
			dao.create(board);
		}
	}
	
	@Test
	public void testListAll() throws Exception {
		List<BoardVO> list = dao.listAll();
		for (BoardVO boardVO : list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
	}
}
