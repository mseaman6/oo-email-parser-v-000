# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(email_list)
    @emails = email_list
  end

  def parse
    if @emails.include?(",")
      parsed_emails = @emails.split(", ")
      parsed_emails.collect do |email|
        if email.include?(" ")
          parsed_emails << email.split(" ")
        end
      end
      binding.pry
    else
      parsed_emails = @emails.split(" ")
    end
    parsed_emails.uniq
  end

end
