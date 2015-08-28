module MessagesHelper

  def recipients_options
    s = ''
    User.all.each do |user|
      s << "<option value='#{user.id}'>#{user.name}</option>"
    end
    s.html_safe
  end

end

def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
  return nil
  #if false
  #return nil
end