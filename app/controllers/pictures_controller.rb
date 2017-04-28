class PicturesController < ApplicationController


  def new_form

    render("photos/new_form.html.erb")
  end

  def create_row

    render("photos/create_row.html.erb")
  end

  def index

    render("photos/index.html.erb")
  end

  def show

    render("photos/show.html.erb")
  end

  def edit_form

    render("photos/edit_form.html.erb")
  end

  def update_row

    render("update_photo/update_row.html.erb")
  end

  def destroy_row

    render("delete_photo/destroy_row.html.erb")
  end

end
