module ApplicationHelper\
  def nice_date_form(the_date)
    return the_date.strftime('%b %e, %Y')
  end
end
