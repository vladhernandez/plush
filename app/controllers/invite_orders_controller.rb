class InviteOrdersController < ApplicationController
  # GET /invite_orders
  # GET /invite_orders.xml
  def index
    @invite_orders = InviteOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @invite_orders }
    end
  end

  # GET /invite_orders/1
  # GET /invite_orders/1.xml
  def show
    @invite_order = InviteOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invite_order }
    end
  end

  # GET /invite_orders/new
  # GET /invite_orders/new.xml
  def new
    @invite_order = InviteOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invite_order }
    end
  end

  # GET /invite_orders/1/edit
  def edit
    @invite_order = InviteOrder.find(params[:id])
  end

  # POST /invite_orders
  # POST /invite_orders.xml
  def create
    @invite_order = InviteOrder.new(params[:invite_order])

    respond_to do |format|
      if @invite_order.save
        flash[:notice] = 'InviteOrder was successfully created.'
        format.html { redirect_to(@invite_order) }
        format.xml  { render :xml => @invite_order, :status => :created, :location => @invite_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invite_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /invite_orders/1
  # PUT /invite_orders/1.xml
  def update
    @invite_order = InviteOrder.find(params[:id])

    respond_to do |format|
      if @invite_order.update_attributes(params[:invite_order])
        flash[:notice] = 'InviteOrder was successfully updated.'
        format.html { redirect_to(@invite_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invite_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /invite_orders/1
  # DELETE /invite_orders/1.xml
  def destroy
    @invite_order = InviteOrder.find(params[:id])
    @invite_order.destroy

    respond_to do |format|
      format.html { redirect_to(invite_orders_url) }
      format.xml  { head :ok }
    end
  end
end
