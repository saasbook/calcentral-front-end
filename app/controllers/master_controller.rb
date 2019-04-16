class MasterController < ApplicationController
    def master
      	@path = Pathmap.where(uripath: request.fullpath).first
      	if @path.nil?
          raise ActionController::RoutingError.new('Not Found')
        end

        # TODO automatically parse content_type from filepath so jpg etc are supported
        render :file => @path.filepath, :content_type => 'application/json'
    end
end
