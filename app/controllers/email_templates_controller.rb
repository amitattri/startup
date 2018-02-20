class EmailTemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @templates = EmailTemplate.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @template = EmailTemplate.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @template = EmailTemplate.new(template_params)
    respond_to do |format|
      if @template.save
        format.html { redirect_to email_templates_path, notice: 'template was successfully created.' }
        format.json { render :show, status: :created, location: @template }
      else
        format.html { render :new }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_to email_templates_path, notice: 'template was successfully updated.' }
        format.json { render :show, status: :ok, location: @template }
      else
        format.html { render :edit }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to email_templates_path, notice: 'template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = EmailTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_params
      params.require(:email_template).permit(:body, :subject, :action_url, :body_text)
    end
end
