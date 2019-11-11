class WorkOrdersController < ApplicationController
  def index
    @all_work_orders = WorkOrder.all
    @technicians = Technician.all
    @locations = Location.all
  end
end
