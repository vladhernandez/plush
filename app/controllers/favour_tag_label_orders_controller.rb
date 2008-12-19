class FavourTagLabelOrdersController < ApplicationController
  # GET /favour_tag_label_orders
  # GET /favour_tag_label_orders.xml
  def index
    @favour_tag_label_orders = FavourTagLabelOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @favour_tag_label_orders }
    end
  end

  # GET /favour_tag_label_orders/1
  # GET /favour_tag_label_orders/1.xml
  def show
    @favour_tag_label_order = FavourTagLabelOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @favour_tag_label_order }
    end
  end

  # GET /favour_tag_label_orders/new
  # GET /favour_tag_label_orders/new.xml
  def new
    @favour_tag_label_order = FavourTagLabelOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @favour_tag_label_order }
    end
  end

  # GET /favour_tag_label_orders/1/edit
  def edit
    @favour_tag_label_order = FavourTagLabelOrder.find(params[:id])
  end

  # POST /favour_tag_label_orders
  # POST /favour_tag_label_orders.xml
  def create
    @favour_tag_label_order = FavourTagLabelOrder.new(params[:favour_tag_label_order])

    respond_to do |format|
      if @favour_tag_label_order.save
        flash[:notice] = 'FavourTagLabelOrder was successfully created.'
        format.html { redirect_to(@favour_tag_label_order) }
        format.xml  { render :xml => @favour_tag_label_order, :status => :created, :location => @favour_tag_label_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @favour_tag_label_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /favour_tag_label_orders/1
  # PUT /favour_tag_label_orders/1.xml
  def update
    @favour_tag_label_order = FavourTagLabelOrder.find(params[:id])

    respond_to do |format|
      if @favour_tag_label_order.update_attributes(params[:favour_tag_label_order])
        flash[:notice] = 'FavourTagLabelOrder was successfully updated.'
        format.html { redirect_to(@favour_tag_label_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @favour_tag_label_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /favour_tag_label_orders/1
  # DELETE /favour_tag_label_orders/1.xml
  def destroy
    @favour_tag_label_order = FavourTagLabelOrder.find(params[:id])
    @favour_tag_label_order.destroy

    respond_to do |format|
      format.html { redirect_to(favour_tag_label_orders_url) }
      format.xml  { head :ok }
    end
  end
end
