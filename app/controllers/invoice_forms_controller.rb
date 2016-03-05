class InvoiceFormsController < ApplicationController
  before_action :set_invoice_form, only: [:show, :edit, :update, :destroy]

  # GET /invoice_forms
  # GET /invoice_forms.json
  def index
    @invoice_forms = InvoiceForm.all
  end

  # GET /invoice_forms/1
  # GET /invoice_forms/1.json
  def show
  end

  # GET /invoice_forms/new
  def new
    @invoice_form = InvoiceForm.new
  end

  # GET /invoice_forms/1/edit
  def edit
  end

  # POST /invoice_forms
  # POST /invoice_forms.json
  def create
    @invoice_form = InvoiceForm.new(invoice_form_params)

    respond_to do |format|
      if @invoice_form.save
        format.html { redirect_to @invoice_form, notice: 'Invoice form was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_form }
      else
        format.html { render :new }
        format.json { render json: @invoice_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_forms/1
  # PATCH/PUT /invoice_forms/1.json
  def update
    respond_to do |format|
      if @invoice_form.update(invoice_form_params)
        format.html { redirect_to @invoice_form, notice: 'Invoice form was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_form }
      else
        format.html { render :edit }
        format.json { render json: @invoice_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_forms/1
  # DELETE /invoice_forms/1.json
  def destroy
    @invoice_form.destroy
    respond_to do |format|
      format.html { redirect_to invoice_forms_url, notice: 'Invoice form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_form
      @invoice_form = InvoiceForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_form_params
      params.require(:invoice_form).permit(:name)
    end
end
