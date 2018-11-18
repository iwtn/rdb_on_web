class AttrsController < ApplicationController
  before_action :set_attr, only: [:show, :edit, :update, :destroy]

  # GET /attrs
  # GET /attrs.json
  def index
    @relation = Relation.find(params[:relation_id])
    @attrs = @relation.attrs
  end

  # GET /attrs/1
  # GET /attrs/1.json
  def show
    @relation = Relation.find(params[:relation_id])
  end

  # GET /attrs/new
  def new
    @relation = Relation.find(params[:relation_id])
    @attr = Attr.new(relation: @relation)
  end

  # GET /attrs/1/edit
  def edit
    @relation = Relation.find(params[:relation_id])
  end

  # POST /attrs
  # POST /attrs.json
  def create
    @attr = Attr.new(attr_params)

    respond_to do |format|
      if @attr.save
        format.html { redirect_to relation_attrs_path(relation: @attr.relation), notice: 'Attr was successfully created.' }
        format.json { render :show, status: :created, location: @attr }
      else
        format.html { render :new }
        format.json { render json: @attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attrs/1
  # PATCH/PUT /attrs/1.json
  def update
    respond_to do |format|
      if @attr.update(attr_params)
        format.html { redirect_to relation_attr_path, notice: 'Attr was successfully updated.' }
        format.json { render :show, status: :ok, location: @attr }
      else
        format.html { render :edit }
        format.json { render json: @attr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attrs/1
  # DELETE /attrs/1.json
  def destroy
    @attr.destroy
    respond_to do |format|
      format.html { redirect_to relation_attrs_url, notice: 'Attr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attr
      @attr = Attr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attr_params
      att = params.fetch(:attr, {}).permit(:name, :attr_type)
      att.merge({ relation_id: params.fetch(:relation_id) })
    end
end
