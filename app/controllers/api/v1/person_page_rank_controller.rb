module Api
  module V1
    class PersonPageRankController < ApplicationController
      # before_action :authenticate_user!, except: :index
      
      # GET /person_page_rank.json
      def index
        @person_page_rank = PersonPageRank.order('id DESC')
      end

      # GET /person_page_rank/1.json
      def show
        @person_page_rank = PersonPageRank.find(params[:id])
      end

      # GET /person_page_rank/new
      def new
      end

      # GET /person_page_rank/1/edit
      def edit
      end

      # POST /person_page_rank.json
      def create
        @person_page_rank = PersonPageRank.new(post_params)
        if @person_page_rank.save
          render status: :created
        else
          render json: @person_page_rank.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /person_page_rank/1.json
      def update
        @person_page_rank = PersonPageRank.find(params[:id])
        if @person_page_rank.update(post_params) 
          render status: :ok
        else
          render json: @person_page_rank.errors, status: :unprocessable_entity 
        end
      end

      # DELETE /person_page_rank/1.json
      def destroy
        @person_page_rank.destroy
      end

      private
      def post_params
        params.require(:person_page_rank).permit(:rank)
      end
    end
  end
end