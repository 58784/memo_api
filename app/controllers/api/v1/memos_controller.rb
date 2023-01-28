module Api
  module V1
    class MemosController < ApplicationController
      before_action :find_memo, only: %w[show update destroy]

      def index
        @memos = Memo.all
        render json: {message: 'index', data: @memos}
      end

      def show
        render json: {message: 'show',data: @memo}
      end

      def create
        @memo = Memo.new(memo_params)

        if @memo.save
          render json: {message: 'create ok', data: @memo}
        else
          render json: {message: 'create miss', data: @memo.errors}
        end
      end

      def update
        if @memo.update(memo_params)
          render json: {message: 'update ok', data: @memo}
        else
          render json: {message: 'update miss', data: @memo.errors}
        end
      end

      def destroy
        @memo.destroy
        render json: {message: 'destroy ok', data: @memo}
      end

      private
      def find_memo
        @memo = Memo.find(params[:id])
      end
      
      def memo_params
        params.permit(:name, :description)
      end
    end
  end
end
