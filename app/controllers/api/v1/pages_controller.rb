module Api
  module V1
    class PagesController < ApplicationController
      # before_action :authenticate_user!, except: :index
      
      # GET /pages.json
      def index
        @pages = Page.order('id DESC')
      end

      # GET /pages/1.json
      def show
        @page = Page.find(params[:id])
      end

      # GET /pages/new
      def new
      end

      # GET /pages/1/edit
      def edit
      end

      # POST /pages.json
      def create
        @page = Page.new(post_params)
        if @page.save
          render status: :created
        else
          render json: @page.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /pages/1.json
      def update
        @page = Page.find(params[:id])
        if @page.update(post_params) 
          render status: :ok
        else
          render json: @page.errors, status: :unprocessable_entity 
        end
      end

      # DELETE /pages/1.json
      def destroy
        @page.destroy
      end

      private
      def post_params
        params.require(:page).permit(:url, :found_date_time, :last_scan_date)
      end
    end
  end
end