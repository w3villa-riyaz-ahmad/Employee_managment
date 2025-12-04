class DocumentsController < ApplicationController 
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  def index
    @documents = Document.all
  end

  # GET /documents/:id
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/:id/edit
  def edit
    # @document is already set by set_document
  end

  # POST /documents
  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path, notice: 'Document was successfully created.'
    else
      Rails.logger.debug @document.errors.full_messages  # Log errors for debugging
      render :new
    end
  end

  # PATCH/PUT /documents/:id
  def update
    if @document.update(document_params)
      redirect_to document_path(@document), notice: 'Document was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /documents/:id
  def destroy
    @document.destroy
    redirect_to documents_path, notice: 'Document was successfully deleted.'
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :doc_type , :employee_id)
  end
end
