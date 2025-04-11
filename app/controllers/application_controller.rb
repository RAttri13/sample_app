class ApplicationController < ActionController::Base

    def hello
        render html: "hello guys"
    end
    
end
