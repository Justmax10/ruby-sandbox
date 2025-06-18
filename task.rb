class Task
  attr_accessor :description, :status

  def initialize(description)
    @description = description
    @status = "incomplete"
  end

  def mark_complete
    @status = "complete"
  end

  def to_s
    "#{description} - #{status}"
  end
end


