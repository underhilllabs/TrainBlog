module ApplicationHelper\
  def nice_date_form(the_date)
    if the_date.present?
      the_date.strftime('%b %e, %Y')
    else
      "No date"
    end
  end
end
