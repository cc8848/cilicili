package cilicili.jz2.controller;

import cilicili.jz2.pojo.Comment;

import java.io.Serializable;
import java.util.Map;

public interface ICommentController {
	Map<String, Serializable> showComments(Integer videoId, Integer offset);
	
	Map<String, Serializable> addComment(Comment comment, String token);
	
	Map<String, Serializable> deleteComment(Integer id, String token);
	
	Map<String, Serializable> likeComment(Integer id);
}
