module PostsHelper
  def logged_user
    if user_signed_in?
      { 'user' => current_user.email,
        'logout' => link_to('Logout', destroy_user_session_path, method: :delete),
        'new_post' => link_to('New Post', '/posts/new') }
    else
      { 'user' => link_to('Login', new_user_session_path),
        'logout' => link_to('Create Account', '/users/sign_up'),
        'new_post' => '' }
    end
  end

  def posted_by(post)
    "Posted by #{post.user.email}" if user_signed_in?
  end
end
