class NotificationsController < ApplicationController
  active_action :mark_as_read
  active_action :mark_as_unread, label: "Mark selected as unread"

  def index
    @notifications = (0..50).map { |i| OpenStruct.new(id: i) }
  end

  def mark_as_read
    render html: params[:collection_ids]
  end

  def mark_as_unread
    render html: params[:collection_ids]
  end

end