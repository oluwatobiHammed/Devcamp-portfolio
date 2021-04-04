    class PortfoliosController < ApplicationController
        before_action :set_blog, only: %i[ show edit update destroy ]
       # GET /portfolio items 
        def index
            @portfolio_items = Portfolio.all
        end

        def angular
            @angular_portfolio_items = Portfolio.angular
        end

        # GET /portfolio/new
        def new
            @portfolio_items = Portfolio.new
        end
        # GET /portfolio/1 or /blogs/1.json
        def show
        end
        # GET /portfolio/1/edit
        def edit
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

          # PATCH/PUT /portfolios/1 or /portfolios/1.json
          def update
            respond_to do |format|
              if @portfolio_items.update(portfolio_params)
                format.html { redirect_to @portfolio_items, notice: "Your portfolio item was successfully updated." }
              else
                format.html { render :edit, status: :unprocessable_entity }
              
              end
            end
          end

           # DELETE /portfolios/1 or /portfolios/1.json
           def destroy

            # Destroy/delete the record
            @portfolio_items.destroy

            # Redirect
            respond_to do |format|
              format.html { redirect_to portfolios_url, notice: "Post was deleted." }
            end
          end

        private
        # Use callbacks to share common setup or constraints between actions.
        def set_blog
            @portfolio_items = Portfolio.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def portfolio_params
            params.require(:portfolio).permit(:title,:subtitle, :body)
        end
      end
