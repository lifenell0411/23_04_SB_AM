package com.KoreaIT.bjw.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UrlReactionRepository {
	@Update("""
			<script>
				UPDATE reactionPoint
				SET regDate = NOW(),
				updateDate = NOW(),
				memberId = #{id},
				relTypeCode = 'article',
				relId = 1,
				`point` = 1
				WHERE id = #{id}
			</script>
			""")

	int increaseLikeCountRd(int id);

}