class ExpensesController < ApplicationController
  def index
    # For a given category, the list of transactions is presented, ordered by the most recent.
    @group = Group.find(params[:group_id])
    @expenses = @group.expenses.order(created_at: :desc)

    # The total amount of transactions is presented.
    @total = 0
    @expenses.each do |expense|
      @total += expense.amount
    end
  end

  def new
    @expense = Expense.new
    @group = Group.find(params[:group_id])
    @groups = Group.where(user_id: current_user.id)
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    @groups = Group.where(id: params[:expense][:group_ids])

    @expense.groups = @groups

    if @expense.save
      redirect_to group_expenses_path, notice: 'Expense created successfully'
    else
      puts @expense.errors.full_messages
      redirect_to new_group_expense_path, alert: 'Error creating Expense'
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to group_expenses_path, notice: 'Expense deleted successfully'
  end

  def edit
    @expense = Expense.find(params[:id])
    @group = Group.find(params[:group_id])
    @groups = Group.where(user_id: current_user.id)
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update(expense_params)
      redirect_to group_expenses_path, notice: 'Expense updated successfully'
    else
      redirect_to edit_expense_path, alert: 'Error updating Expense'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, group_ids: [])
  end
end
