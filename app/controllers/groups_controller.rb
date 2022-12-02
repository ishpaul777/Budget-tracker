class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user

    if @group.save
      redirect_to groups_path, notice: 'Added new Category successfully'
    else
      redirect_to new_group_path, alert: 'Error adding new Category'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path, notice: 'Category deleted successfully'
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to groups_path, notice: 'Category updated successfully'
    else
      redirect_to edit_group_path, alert: 'Error updating Category'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
