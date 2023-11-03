module Api
    module V1
        class AnalysisController < ApplicationController
            protect_from_forgery with: :null_session
            #Ex:- :null => false
          
            def create
            analysis = Analysis.new(analysis_params)

            if analysis.save
                render json:AnalysisSerializer.new(analysis).serialized_json
            else
                render json: {error: analysis.error.message}, status: 422
            end
            end

            def destroy
                analysis = Analysis.find(params[:id])
                
                if analysis.destroy
                    head: no_content
                else
                    render json: {error: analysis.error.message},status: 422
                end
            end



            private
            def analysis_params
                params.require (:analysis).permit(:Title, :description, :score, :airline_id)
        end
    end
end
