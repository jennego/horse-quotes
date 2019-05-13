class QuotesController < ApplicationController

    def new
        @quote = Quote.new
        @quote.categories.build
        @quote.build_author
    end

    def create 
        @quote = Quote.new quote_params
      if @quote.save
        redirect_to root_path
      else
        render :new
      end
    end

    def index 
        @quotes = Quote.all
    end

    def show 
        @quote = Quote.find params[:id]
    end

    private 

    def quote_params
 
    params.require(:quote).permit(:quotetext, author_attributes: [:id, :author_first, :author_last], category_attributes: [:id, :category])
    
    end

end
