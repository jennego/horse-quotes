class QuotesController < ApplicationController

    def new
        @quote = Quote.new
        @quote.build_author
    end

    def create 
        @quote = Quote.new quote_params 
         
    
      if @quote.save
        redirect_to quote_path(@quote)
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
       params.require(:quote).permit!
    
 
    # params.require(:quote).permit(:id, :quotetext, :author_id, :category_ids => [], :name => [], author_attributes: [:id, :author_first, :author_last])
    
    end

end
