class OccasionOrderFormsController < ApplicationController
  # GET /occasion_order_forms
  # GET /occasion_order_forms.xml
  def index
    @occasion_order_forms = OccasionOrderForm.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @occasion_order_forms }
    end
  end

  # GET /occasion_order_forms/1
  # GET /occasion_order_forms/1.xml
  def show
    @occasion_order_form = OccasionOrderForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @occasion_order_form }
    end
  end

  # GET /occasion_order_forms/new
  # GET /occasion_order_forms/new.xml
  def new
    @occasion_order_form = OccasionOrderForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @occasion_order_form }
    end
  end

  # GET /occasion_order_forms/1/edit
  def edit
    @occasion_order_form = OccasionOrderForm.find(params[:id])
  end

  # POST /occasion_order_forms
  # POST /occasion_order_forms.xml
  def create
    @occasion_order_form = OccasionOrderForm.new(params[:occasion_order_form])

    respond_to do |format|
      if @occasion_order_form.save
        flash[:notice] = 'OccasionOrderForm was successfully created.'
        format.html { redirect_to(@occasion_order_form) }
        format.xml  { render :xml => @occasion_order_form, :status => :created, :location => @occasion_order_form }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @occasion_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /occasion_order_forms/1
  # PUT /occasion_order_forms/1.xml
  def update
    @occasion_order_form = OccasionOrderForm.find(params[:id])

    respond_to do |format|
      if @occasion_order_form.update_attributes(params[:occasion_order_form])
        flash[:notice] = 'OccasionOrderForm was successfully updated.'
        format.html { redirect_to(@occasion_order_form) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @occasion_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /occasion_order_forms/1
  # DELETE /occasion_order_forms/1.xml
  def destroy
    @occasion_order_form = OccasionOrderForm.find(params[:id])
    @occasion_order_form.destroy

    respond_to do |format|
      format.html { redirect_to(occasion_order_forms_url) }
      format.xml  { head :ok }
    end
  end
end
