class MasterController < ApplicationController
    def master
        requestPath = request.path
        # remove parameter strings
        requestPath.slice!(params[:wildcard].to_s()).slice!(params[:wildcard2].to_s())
      	@path = Pathmap.where(uripath: requestPath).first
      	if @path.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        render :file => @path.filepath, :content_type => 'application/json'
    end

    #used for advisor/delegate act_as
    def no_content
        render :nothing => true, :status => 204
    end
end
