module Web::Views::Dashboards
  class Show
    include Web::View

    def javascripts
      raw %(
        <script src="/assets/crossfilter.min.js"></script>
        <script src="/assets/d3.v4.min.js"></script>
        <script src="/assets/#{name}.js"></script>)
    end
  end
end
