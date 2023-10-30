module Api
    module V1
        class AirlinesController < ApplicationControll
            def index
            airlines = Airline.all

            AirlineSerializer.new(airlines, options).serializer_json
            end

            def show

                airline = Airline.find_by(slug: param[:slug])
                render json: AirlineSerializer.new(airline, options).serializer_json

            end

            def create
                airline = Airline.new(airline_params)

                if airline.save
                    render json: AirlineSerializer.new(airline).serializer_json
                else
                    render json: {error: airline.error.message}, status:422
            end
            def update
                airline = Airline.find_by(slug: param[:slug])

                if airline.update(airline_params)
                    render json: AirlineSerializer.new(airline, options).serializer_json
                else
                    render json: {error: airline.error.message}, status:422
            end
           
            def destroy
                airline = Airline.find_by(slug: param[:slug])

                if airline.destroy(airline_params)
                    head :no_content
                else
                    render json: {error: airline.error.message}, status:422
            end
            private
            def airline_params
                params.require(:airline).permit(:name, :image_url)
               
            end

            def options
                @options ||= {include: %i[analysis]}
            
            end

        end
    end
end