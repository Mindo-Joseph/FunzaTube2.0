class UploadsController < ApplicationController
    def new
        @user = User.find_by(id: 1)
    end
    def create
        begin
           file = params[:file].tempfile.read
           data = JSON.parse(file)
           render json: data
           File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
            file.write(uploaded_io.read)
        rescue
           render json: { errors: 'Upload failed' }
        end
        redirect_to root
    end
end
end
