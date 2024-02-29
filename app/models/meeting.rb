class Meeting < ApplicationRecord
  belongs_to :service
  belongs_to :client
  belongs_to :stylist
  validates :start_time, presence: true, uniqueness: { scope: :stylist_id, message: "Ya tiene una cita en ese horario" }
  validates :end_time, presence: true
  validate :validate_meeting_time_range
  validate :validate_meeting_overlap
  validate :validate_meeting_date_time

  private
  
  def validate_meeting_date_time
      if start_time.present? && start_time < Time.current - 6.hours
        errors.add(:start_time, "La cita no puede ser anterior a la hora actual")
      end
  end

  def validate_meeting_time_range
    if start_time.present? && end_time.present? && start_time >= end_time
      errors.add(:end_time, "la fecha de inicio debe ser anterior a la fecha final")
    end
  end

  def validate_meeting_overlap
    if start_time.present? && end_time.present? && overlapping_meetings.exists?
      errors.add(:base, "Ya existe una cita en ese horario para el estilista seleccionado")
    end
  end

  def overlapping_meetings
    Meeting.where(stylist_id: stylist_id)
           .where.not(id: id)
           .where("start_time < ? AND end_time > ?", end_time, start_time)
  end
end
