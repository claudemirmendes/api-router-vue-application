class Private::PatientsController < Private::BaseController
  def create
    patient = Patient.create(patient_params)
    if(patient)
      render json: patient
    else
      render json: {"message": "Houve um erro!", "error": 500}
    end
  end

  def update
    patient = Patient.find(params[:id])
    patient.update(patient_params)
    render json: patient
  end

  private
  def patient_params
    params.permit(:nome, :user_id, :email)
  end
end
