class TacgiaController < ApplicationController
    def new
        @tacgia = Tacgium.all
    end
end
