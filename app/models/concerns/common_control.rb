module CommonControl
  extend ActiveSupport::Concern

  included do
    before_action :update_api_pagination,
                  :update_sorting
  end

  # Update pagination variables based on parameters
  def update_api_pagination
    # @per_page = params[:per_page] || Application.config.common_batch_size
    # @page = params[:page] || 1
    # @limit = (l = params[:limit].to_i) == 0 ? 100 : l
    @limit = (l = params[:limit].to_i) == 0 ? Rails.application.config.common_batch_size : l
    @page = (p = params[:page].to_i) == 0 ? 1 : p
    @offset = ((@page -1) * @limit)
  end

  # Update sorting variables based on parameters
  def update_sorting
    @sort_column = params[:sort_column] || 'created_at'
    @sort_direction = params[:sort_direction] || 'desc'
  end

end