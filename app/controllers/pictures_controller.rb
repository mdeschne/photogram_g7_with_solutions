class PicturesController < ApplicationController


  def new_form

    render("photos/new_form.html.erb")
  end

  def create_row

@p = Photo.new

@url = params["url"]

@caption = params["cap"]


@p.source = @url
@p.caption = @caption

# save_status = @p.save
# 
# if save_status == true
#   redirect_to("/photos", {:notice => "created photo successfully"})
# else
# render("photos/create_row.html/erb")
#
# end

@count = Photo.count

    redirect_to("/photos")

  end

  def index

@i = Photo.all.order(:created_at => :desc)

    render("photos/index.html.erb")
  end

  def show

@id = params["the_id"]

@p = Photo.find(@id)



# @cap = p.caption
# @source = p.source
# @timestamp = p.created_at

    render("photos/show.html.erb")
  end

  def edit_form
    # <input name = "the source" value =>
    @id = params["the_id"]

f = Photo.find(@id)

@url = f.source
@cap = f.caption

    render("photos/edit_form.html.erb")
  end

  def update_row

    @id = params["id"]

    @url = params["url"]

    @caption = params["cap"]

    e = Photo.find(@id)

    e.source = @url
    e.caption = @caption
    e.save

    @count = Photo.count

        redirect_to("/photos/"+params["id"])

  end

  def destroy_row

  @id = params["the_id"]

    d = Photo.find(@id)


    d.destroy
    d.save

    @count = Photo.count


    redirect_to("/photos")

        # render("destroy_row.html.erb")
  end

end
