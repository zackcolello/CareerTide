class CareerpathsController < ApplicationController

  def index

    # User job search
    if params[:jobQuery]

      @jobTitle = params[:jobQuery]

      if @jobTitle != nil
        httpResponse = HTTParty.get("http://api.glassdoor.com/api/api.htm?t.p=43545&t.k=gC7Gp2S8QHo&userip=" + request.remote_ip + "&useragent=" + request.user_agent + "&format=json&v=1&action=jobs-prog&countryId=1&jobTitle=" + params[:jobQuery])
        @jobList = httpResponse["response"]
        @jobList = @jobList["results"]
      else
        @jobList = "Popular jobs"
      end

    end

    asdf = "test"

  end

  def sample
    @controller_message = "Hello from controller"
  end
end