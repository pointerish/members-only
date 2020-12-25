module PostsHelper
  def logged_user(post)
    if user_signed_in?
      { 'user' => post.user.email, 
        'logout' => link_to('Logout', destroy_user_session_path, method: :delete),
        'new_post' => link_to('New Post', '/posts/new') }
    else
      { 'user' => link_to('Login', new_user_session_path),
        'logout' => link_to('Create Account', '/users/sign_up'),
        'new_post' => '' }
    end
  end

  def posted_by(post)
    if user_signed_in?
      "Posted by #{post.user.email}"
    end
  end
end
