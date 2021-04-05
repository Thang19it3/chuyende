class SachController < ApplicationController
    def new
        @sach = Book1.all
    end
end
