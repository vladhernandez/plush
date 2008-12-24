class SaveDateOrdersController < ApplicationController
      before_filter :login_required, :except => ['show', 'new', 'create']
  # GET /save_date_orders
  # GET /save_date_orders.xml
  def index
    @save_date_orders = SaveDateOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @save_date_orders }
    end
  end

  # GET /save_date_orders/1
  # GET /save_date_orders/1.xml
  def show
    @save_date_order = SaveDateOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @save_date_order }
    end
  end

  # GET /save_date_orders/new
  # GET /save_date_orders/new.xml
  def new
    @save_date_order = SaveDateOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @save_date_order }
    end
  end

  # GET /save_date_orders/1/edit
  def edit
    @save_date_order = SaveDateOrder.find(params[:id])
  end

  # POST /save_date_orders
  # POST /save_date_orders.xml
  def create
    @save_date_order = SaveDateOrder.new(params[:save_date_order])

    respond_to do |format|
      if @save_date_order.save
        flash[:notice] = 'SaveDateOrder was successfully created.'
        format.html { redirect_to(@save_date_order) }
        format.xml  { render :xml => @save_date_order, :status => :created, :location => @save_date_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @save_date_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /save_date_orders/1
  # PUT /save_date_orders/1.xml
  def update
    @save_date_order = SaveDateOrder.find(params[:id])

    respond_to do |format|
      if @save_date_order.update_attributes(params[:save_date_order])
        flash[:notice] = 'SaveDateOrder was successfully updated.'
        format.html { redirect_to(@save_date_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @save_date_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /save_date_orders/1
  # DELETE /save_date_orders/1.xml
  def destroy
    @save_date_order = SaveDateOrder.find(params[:id])
    @save_date_order.destroy

    respond_to do |format|
      format.html { redirect_to(save_date_orders_url) }
      format.xml  { head :ok }
    end
  end
end
