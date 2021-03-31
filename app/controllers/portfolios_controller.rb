class PortfoliosController < ApplicationController

   # GET /portfolio items 
   def index
    @portfolio_items = Portfolio.all
  end

    # GET /portfolio/new
    def new
      @portfolio_items = Portfolio.new
    end

       # POST /portfolio 
       def create
        @portfolio_items = Portfolio.new(portfolio_params)

        respond_to do |format|
          if @portfolio_items.save
            format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live." }
          else
            format.html { render :new, status: :unprocessable_entity }
          
          end
        end
      end

        # Only allow a list of trusted parameters through.
        def portfolio_params
          params.require(:portfolio).permit(:title,:subtitle, :body)
        end
end
