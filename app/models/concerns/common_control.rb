module CommonControl
  extend ActiveSupport::Concern

  # Updates the pagination variables based on parameters
  def update_api_pagination
    @limit = (l = params[:limit].to_i) == 0 ? Rails.application.config.common_batch_size : l
    @page = (p = params[:page].to_i) == 0 ? 1 : p
    @offset = (@page - 1) * @limit
  end

  # Updates the sorting variables based on parameters
  def update_sorting
    @sort_column = params[:sort_column] || 'created_at'
    @sort_direction = params[:sort_direction] || 'desc'
  end

end