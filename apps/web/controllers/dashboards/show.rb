module Web::Controllers::Dashboards
  class Show
    include Web::Action

    expose :name
    def call(params)
      @name = params[:id]
    end
  end
end
