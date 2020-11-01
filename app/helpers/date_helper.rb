module DateHelper
  def date_display_format
    "%m/%d/%Y"
  end

  def datetime_display_format
    date_display_format + " at %I:%M%p"
  end

  def display_date(datetime)
    datetime.strftime(date_display_format)
  end

  def display_datetime(datetime)
    datetime.strftime(datetime_display_format)
  end
end
