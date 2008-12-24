class OtherSampleOrdersController < ApplicationController
      before_filter :login_required, :except => ['show', 'new', 'create']
  # GET /other_sample_orders
  # GET /other_sample_orders.xml
  def index
    @other_sample_orders = OtherSampleOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @other_sample_orders }
    end
  end

  # GET /other_sample_orders/1
  # GET /other_sample_orders/1.xml
  def show
    @other_sample_order = OtherSampleOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @other_sample_order }
    end
  end

  # GET /other_sample_orders/new
  # GET /other_sample_orders/new.xml
  def new
    @other_sample_order = OtherSampleOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @other_sample_order }
    end
  end

  # GET /other_sample_orders/1/edit
  def edit
    @other_sample_order = OtherSampleOrder.find(params[:id])
  end

  # POST /other_sample_orders
  # POST /other_sample_orders.xml
  def create
    @other_sample_order = OtherSampleOrder.new(params[:other_sample_order])

    respond_to do |format|
      if @other_sample_order.save
        flash[:notice] = 'OtherSampleOrder was successfully created.'
        format.html { redirect_to(@other_sample_order) }
        format.xml  { render :xml => @other_sample_order, :status => :created, :location => @other_sample_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @other_sample_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /other_sample_orders/1
  # PUT /other_sample_orders/1.xml
  def update
    @other_sample_order = OtherSampleOrder.find(params[:id])

    respond_to do |format|
      if @other_sample_order.update_attributes(params[:other_sample_order])
        flash[:notice] = 'OtherSampleOrder was successfully updated.'
        format.html { redirect_to(@other_sample_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @other_sample_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /other_sample_orders/1
  # DELETE /other_sample_orders/1.xml
  def destroy
    @other_sample_order = OtherSampleOrder.find(params[:id])
    @other_sample_order.destroy

    respond_to do |format|
      format.html { redirect_to(other_sample_orders_url) }
      format.xml  { head :ok }
    end
  end
end
