class WeddingSampleOrdersController < ApplicationController
  # GET /wedding_sample_orders
  # GET /wedding_sample_orders.xml
  def index
    @wedding_sample_orders = WeddingSampleOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wedding_sample_orders }
    end
  end

  # GET /wedding_sample_orders/1
  # GET /wedding_sample_orders/1.xml
  def show
    @wedding_sample_order = WeddingSampleOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wedding_sample_order }
    end
  end

  # GET /wedding_sample_orders/new
  # GET /wedding_sample_orders/new.xml
  def new
    @wedding_sample_order = WeddingSampleOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wedding_sample_order }
    end
  end

  # GET /wedding_sample_orders/1/edit
  def edit
    @wedding_sample_order = WeddingSampleOrder.find(params[:id])
  end

  # POST /wedding_sample_orders
  # POST /wedding_sample_orders.xml
  def create
    @wedding_sample_order = WeddingSampleOrder.new(params[:wedding_sample_order])

    respond_to do |format|
      if @wedding_sample_order.save
        flash[:notice] = 'WeddingSampleOrder was successfully created.'
        format.html { redirect_to(@wedding_sample_order) }
        format.xml  { render :xml => @wedding_sample_order, :status => :created, :location => @wedding_sample_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wedding_sample_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wedding_sample_orders/1
  # PUT /wedding_sample_orders/1.xml
  def update
    @wedding_sample_order = WeddingSampleOrder.find(params[:id])

    respond_to do |format|
      if @wedding_sample_order.update_attributes(params[:wedding_sample_order])
        flash[:notice] = 'WeddingSampleOrder was successfully updated.'
        format.html { redirect_to(@wedding_sample_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wedding_sample_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wedding_sample_orders/1
  # DELETE /wedding_sample_orders/1.xml
  def destroy
    @wedding_sample_order = WeddingSampleOrder.find(params[:id])
    @wedding_sample_order.destroy

    respond_to do |format|
      format.html { redirect_to(wedding_sample_orders_url) }
      format.xml  { head :ok }
    end
  end
end
