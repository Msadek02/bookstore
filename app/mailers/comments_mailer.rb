class CommentsMailer < ApplicationMailer
  def new_comment(comment_id)
    @comment = Comment.find(comment_id)
    @book = @comment.commentable
    @author = @comment.commentable.author
    mail(to: @author.email, subject: 'Thanks you')
  end
end
