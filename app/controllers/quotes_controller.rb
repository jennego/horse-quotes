class QuotesController < ApplicationController
    def create 
    end

    def index 
        @quotes = Quote.all
    end

    def show 
        @quote = Quote.find params[:id]
    end

end
