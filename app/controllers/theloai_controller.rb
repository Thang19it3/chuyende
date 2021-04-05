class TheloaiController < ApplicationController
    def new
        @theloai = TheLoaiSach.all
    end
end
