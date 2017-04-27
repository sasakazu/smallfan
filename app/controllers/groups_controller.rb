class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])

  end

  def edit
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      redirect_to @group

    else
      render "new"
    end

  end



  private

      def group_params
                params.require(:group).permit(:name, :icon)
      end





end
