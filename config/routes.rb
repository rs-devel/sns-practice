Rails.application.routes.draw do
  get  "/"            => "sns#index"  # トップ画面表示 get
  get  "sns/create"      => "sns#create" # 投稿画面表示   get
  post "sns/post/store"  => "sns#store"  # 投稿内容登録   post
  get  "sns/show"        => "sns#show"   # 一覧表示       get
end
