class Private::EventsController < Private::BaseController
  def create
    event = Event.create(event_params)
    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    render json: event
  end

  private
  def event_params
    params.permit(:date, :init_hour, :end_hour, :payment_type, :patient_id) 
  end
end
