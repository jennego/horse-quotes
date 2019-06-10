class QuotesController < ApplicationController

    def new
        @quote = Quote.new
        @quote.build_author
    end

    def create 
        @quote = Quote.new quote_params 
        @quote.author = Author.find_or_create_by(fullname: quote_params[:author_id]) if quote_params[:author_id].to_i == 0 
      
    
        # quote_params[:category_ids].each do |c|
        #   Category.find_or_create_by(name: quote_params[c]) if quote_params[c].to_i == 0
        # end

        if @quote.save
        redirect_to quote_path(@quote)
      else
        render :new
      end

      if @quote.author.author_first.present? && @quote.author.author_last.present?
        else
      if @quote.author.save
        name = quote_params[:author_id].reverse.split(' ', 2).map(&:reverse).reverse
        @quote.author.author_first = name[0] 
        @quote.author.author_last = name[1]
        @quote.author.save! 
      end
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
