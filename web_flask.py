from app import app
app.run(host='0.0.0.0',port=8080,debug=True)

"""
 <!--form action="{{ url_for('clone_board.list') }}" method="post">
                                    <!--form action="{{ url_for('clone_board.subCommentAdd',board_content_idx=board_content_idx,parent_comment_idx=comment['comment_idx'] )}}" method="post"!-->
                                    <!-- 
                                        <label for="content_text" style="font-size:16px;"></label>
                                        <textarea name="content_text" id="content_text" rows="4"  ></textarea>
                                        <input type="submit" style="font-size:16px;" value="대댓글 등록">
                                    </form!-->
"""