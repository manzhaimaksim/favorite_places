module ApplicationHelper
  def user_avatar(user)
    if user.avatar?
      user.avatar.url
    else
      asset_path('user.jpg')
    end
  end

  def user_avatar_thumb(user)
    if user.avatar.file.present?
      user.avatar.thumb.url
    else
      asset_path('user.jpg')
    end
  end
end
