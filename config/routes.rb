Rails.application.routes.draw do
  get "sach" => "sach#new"
  get "theloai" => "theloai#new"
  get "nxb" => "nxb#new"
  get "tacgia" => "tacgia#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
