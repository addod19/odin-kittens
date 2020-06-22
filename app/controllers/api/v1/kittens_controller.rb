module Api
  module V1
    class KittensController < ApplicationController
      def index
        @kittens = Kitten.all
        render json: { status: 'SUCCESS',
        message: 'All kittens', data: @kittens},
        status: :ok
      end
    
      def create
        @kitten = Kitten.create(kitten_params)
        if @kitten
          render json:  { status: 'SUCCESS', message: 'Kitten added',
          data: @kitten}, status: :ok
        else
          render json:  { status: 'ERROR', message:
          'Failed to add kitten', data: @kitten.errors},
          status: :ok
        end
      end
    
      def new
        @kitten = Kitten.new(kitten_params)
        if @kitten.save
          render json:  { status: 'SUCCESS', message: 'Kitten added',
          data: @kitten}, status: :ok
        else
          render json:  { status: 'ERROR', message:
          'Failed to add kitten', data: @kitten.errors},
          status: :ok
        end
      end
    
      def update
        @kitten = Kitten.find(params[:id])
        @kitten.update_attributes(kitten_params)
        if @kitten
          render json:  { status: 'SUCCESS', message: 'Kitten updated successfully',
          data: @kitten}, status: :ok
        else
          render json:  { status: 'ERROR', message:
          'Failed to update kitten', data: @kitten.errors},
          status: :ok
        end
      end
    
      def destroy
        @kitten = Kitten.find(params[:id])
        if @kitten.destroy
          render json:  { status: 'SUCCESS', message: 'Kitten deleted successfully',
          data: @kitten}, status: :ok
        else
          render json:  { status: 'ERROR', message:
          'Failed to delete kitten', data: @kitten.errors},
          status: :ok
        end
      end
    
      def show
        @kitten = Kitten.find(params[:id])
        render json:  @kitten
      end
    
      def delete
        @kitten = Kitten.find(params[:id])
        if @kitten.destroy
          render json:  { status: 'SUCCESS', message: 'Kitten deleted successfully',
          data: @kitten}, status: :ok
        else
          render json:  { status: 'ERROR', message: 'Kitten could not delete',
          data: @kitten}, status: :ok
        end
      end

      private

      def kittens_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
      end
      
    end
  end
end