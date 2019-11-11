module ApplicationHelper

  # helpers for building readable html code
  def br_tag() tag(:br) end
  def hr_tag() tag(:hr) end

  6.times.each{|i| define_method("h#{i+1}_tag"){|*args, &block| content_tag("h#{i+1}", *args, &block)} }

  %w(div head body strong p span nav ul li a table tr td th tbody tfoot thead i b u em dl dt dd small input textarea).each do |custom_tag|
    define_method("#{custom_tag}_tag"){|*args, &block| content_tag(custom_tag, *args, &block)}
  end
end
