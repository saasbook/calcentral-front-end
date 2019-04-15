class MasterController < ApplicationController
    def master
	@path = Pathmap.where(uripath: request.fullpath).first
	#if @path.nil?
	    #TODO redirect to a page that says that path isn't in the database
        #end
        
        #TODO automatically parse content_type from filepath so jpg etc are supported
        render :file => @path.filepath, :content_type => 'application/json'
    end
end
