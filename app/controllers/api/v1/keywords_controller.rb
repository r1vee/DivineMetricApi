module Api
  module V1
    class KeywordsController < ApplicationController
      # before_action :authenticate_user!, except: :index

      # GET /keywords.json
      def index
        @keywords = Keyword.order('id DESC')
      end

      # GET /keywords/1.json
      def show
        @keyword = Keyword.find(params[:id])
      end

      # GET /keywords/new
      def new
      end

      # GET /keywords/1/edit
      def edit
      end

      # POST /keywords.json
      def create
        @keyword = Keyword.new(keyword_params)
        if @keyword.save
          render status: :created
        else
          render json: @keyword.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /keywords/1.json
      def update
        @keyword = Keyword.find(params[:id])
        if @keyword.update(post_params)
          render status: :ok
        else
          render json: @keyword.errors, status: :unprocessable_entity 
        end
      end

      # DELETE /keywords/1.json
      def destroy
        @keyword.destroy
      end

      private
      def post_params
        params.require(:keyword).permit(:name, :person_id)
      end
    end
  end
end