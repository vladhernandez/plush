class ThankYouOrderFormsController < ApplicationController
      before_filter :login_required, :except => ['show', 'new', 'create']
  # GET /thank_you_order_forms
  # GET /thank_you_order_forms.xml
  def index
    @thank_you_order_forms = ThankYouOrderForm.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @thank_you_order_forms }
    end
  end

  # GET /thank_you_order_forms/1
  # GET /thank_you_order_forms/1.xml
  def show
    @thank_you_order_form = ThankYouOrderForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thank_you_order_form }
    end
  end

  # GET /thank_you_order_forms/new
  # GET /thank_you_order_forms/new.xml
  def new
    @thank_you_order_form = ThankYouOrderForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thank_you_order_form }
    end
  end

  # GET /thank_you_order_forms/1/edit
  def edit
    @thank_you_order_form = ThankYouOrderForm.find(params[:id])
  end

  # POST /thank_you_order_forms
  # POST /thank_you_order_forms.xml
  def create
    @thank_you_order_form = ThankYouOrderForm.new(params[:thank_you_order_form])

    respond_to do |format|
      if @thank_you_order_form.save
        flash[:notice] = 'ThankYouOrderForm was successfully created.'
        format.html { redirect_to(@thank_you_order_form) }
        format.xml  { render :xml => @thank_you_order_form, :status => :created, :location => @thank_you_order_form }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thank_you_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thank_you_order_forms/1
  # PUT /thank_you_order_forms/1.xml
  def update
    @thank_you_order_form = ThankYouOrderForm.find(params[:id])

    respond_to do |format|
      if @thank_you_order_form.update_attributes(params[:thank_you_order_form])
        flash[:notice] = 'ThankYouOrderForm was successfully updated.'
        format.html { redirect_to(@thank_you_order_form) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thank_you_order_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thank_you_order_forms/1
  # DELETE /thank_you_order_forms/1.xml
  def destroy
    @thank_you_order_form = ThankYouOrderForm.find(params[:id])
    @thank_you_order_form.destroy

    respond_to do |format|
      format.html { redirect_to(thank_you_order_forms_url) }
      format.xml  { head :ok }
    end
  end
end
