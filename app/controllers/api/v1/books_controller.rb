module Api
	module V1
			class BooksController < ApplicationController
				# before_action :authorize_access_request!
				before_action :set_book, only: [:show, :update, :destroy] #set the correct user book before update/delete/show

				# GET /books
				def index
					@books =  Book.all #current_user.books
					render json: @books
				end
				
				# GET /books/1 not necessary for now
				def show
					render json: @book
				end
				
				# POST /books
				def create
					@book = Book.new(book_params) #current_user.books.build(book_params)

					if @book.save
						render json: @book, status: :created
					else
						render json: @book.errors, status: :unprocessable_entity
					end
				end

				# PATCH/PUT /books/1
				def update
					if @book.update(book_params)
						render json: @book
					else
						render json: @book.errors, status: :unprocessable_entity
					end
				end

				# DELETE /books/1
				def destroy
					@book.destroy
				end

				private

				def set_book
					@book = Book.find(params[:id]) #current_user.books.find(params[:id])
				end
				
				def book_params
					params.require(:book).permit(:title, :author, :comment, :purchased, :status)
				end
			end
	end
end