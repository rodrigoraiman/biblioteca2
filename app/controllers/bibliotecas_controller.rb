class BibliotecasController < ApplicationController
    def index
        @bibliotecas = Biblioteca.order(:title).page(params[:page])
    end

    def show
        @bibliotecas = Biblioteca.show(biblioteca_params)
    end

    def new
        @bibliotecas = Biblioteca.new
    end

    def create
        @biblioteca = Biblioteca.new(biblioteca_params)
        if @biblioteca.save
            redirect_to bibliotecas_path
        else
            render :new
        end        
    end

    def edit
        @biblioteca = Biblioteca.find(params[:id])
    end

    def update
        @biblioteca = Biblioteca.find(biblioteca_params)
        if @biblioteca.update(biblioteca_params)
            redirect_to bibliotecas_path
        else
            render :edit
        end        
    end

    def delete
        @biblioteca = Biblioteca.find(params[:id])
        @biblioteca.destroy
        redirect_to bibliotecas_path
    end



    private
    def biblioteca_params
        params.require(:biblioteca).permit(:title, :author, :status)
    end
end
