#For example routes
module V1
  class AutoresAPI < Base
    namespace "authors"

      get "/" do
        guard!
         Autor.all.offset(1).limit(10)
      end

      post "/" do
        guard!
        Autor.first
      end

      delete "/" do
        guard!
        { :secret => "this is a text!!! :)" }
      end


      route_param :id do
        get do
          guard!
          Autor.find(params[:id])
        end 

        resource :books do
          get "/" do
            guard!
            puts params
          end
        end
      end
  end
end
