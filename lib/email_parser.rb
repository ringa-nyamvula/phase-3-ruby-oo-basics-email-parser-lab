# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
    def initialize(emails)
      @emails = emails
    end

    def parse
      # Split the emails and remove any whitespace
      parsed_emails = emails.split(/[, ]+/).map(&:strip)

      # Remove duplicate emails
      parsed_emails.uniq
    end

    private

    attr_reader :emails
  end