class BuscaClimaController < ApplicationController

    def atual
        render json: ComunicacaoClima.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def proximas_horass
        render json: ComunicacaoProximasHoras.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def proximos_dias
        render json: ComunicacaoProximosDias.new.buscar(cidade_params[:cidade]), status: :ok 
    end
     
    private

    def cidade_params
        params.permit(:cidade)
    end
end
