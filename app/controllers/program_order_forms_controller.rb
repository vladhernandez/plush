class ProgramOrderFormsController < ApplicationController
  # GET /program_order_forms
  # GET /program_order_forms.xml
  def index
    @program_order_forms = ProgramOrderForm.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @program_order_forms }
    end
  end

  # GET /program_order_forms/1
  # GET /program_order_forms/1.xml
  def show
    @program_order_form = ProgramOrderForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @program_order_form }
    end
  end

  # GET /program_order_forms/new
  # GET /program_order_forms/new.xml
  def new
    @program_order_form = ProgramOrderForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @program_order_form }
    end
  end

  # GET /program_order_forms/1/edit
  def edit
    @program_order_form = ProgramOrderForm.find(params[:id])
  end

  # POST /program_order_forms
  # POST /program_order_forms.xml
  def create
    @program_order_form = ProgramOrderForm.new(params[:program_order_form])

    respond_to do |format|
      if @program_order_form.save
        flash[:notice] = 'ProgramOrderForm was successfully created.'
        format.html { redirect_to(@program_order_form) }
        format.xml  { render :xml => @program_order_form, :status => :created, :location => @program_order_form }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @program_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /program_order_forms/1
  # PUT /program_order_forms/1.xml
  def update
    @program_order_form = ProgramOrderForm.find(params[:id])

    respond_to do |format|
      if @program_order_form.update_attributes(params[:program_order_form])
        flash[:notice] = 'ProgramOrderForm was successfully updated.'
        format.html { redirect_to(@program_order_form) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @program_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /program_order_forms/1
  # DELETE /program_order_forms/1.xml
  def destroy
    @program_order_form = ProgramOrderForm.find(params[:id])
    @program_order_form.destroy

    respond_to do |format|
      format.html { redirect_to(program_order_forms_url) }
      format.xml  { head :ok }
    end
  end
end
