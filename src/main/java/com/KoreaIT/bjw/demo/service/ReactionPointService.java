package com.KoreaIT.bjw.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KoreaIT.bjw.demo.repository.ReactionPointRepository;
import com.KoreaIT.bjw.demo.vo.ResultData;

@Service
public class ReactionPointService {

	@Autowired
	private ReactionPointRepository reactionPointRepository;
	@Autowired
	private ArticleService articleService;

	public ResultData actorCanMakeReaction(int actorId, String relTypeCode, int relId) {
		if (actorId == 0) {
			return ResultData.from("F-1", "로그인 하고 오렴");
		}
		int sumReactionPointByMemberId = reactionPointRepository.getSumReactionPointByMemberId(actorId, relTypeCode,
				relId);

		if (sumReactionPointByMemberId != 0) {
			return ResultData.from("F-2", "추천 불가", "sumReactionPointByMemberId", sumReactionPointByMemberId);
		}
		return ResultData.from("S-1", "추천 가능", "sumReactionPointByMemberId", sumReactionPointByMemberId);
	}

	public ResultData addGoodReactionPoint(int actorId, String relTypeCode, int relId) {
		int affectedRow = reactionPointRepository.addGoodReactionPoint(actorId, relTypeCode, relId);

		if (affectedRow != 1) {
			return ResultData.from("F-2", "좋아요 실패");
		}

		switch (relTypeCode) {
		case "article":
			articleService.increaseGoodReationPoint(relId);
			break;
		}

		return ResultData.from("S-1", "좋아요 처리 됨");

	}

	public ResultData addBadReactionPoint(int actorId, String relTypeCode, int relId) {
		reactionPointRepository.addBadReactionPoint(actorId, relTypeCode, relId);

		switch (relTypeCode) {
		case "article":
			articleService.increaseBadReationPoint(relId);
			break;
		}

		return ResultData.from("S-1", "싫어요 처리 됨");
	}

}