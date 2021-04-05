class NxbController < ApplicationController
    def new
        @nxb = Nxb.all
        end
end
