class Post < ApplicationRecord
  belongs_to :language
  belongs_to :demande
  belongs_to :user
  def pic=(uploaded_io)
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
              file.write(uploaded_io.read)
                end
        write_attribute(:pic,uploaded_io.original_filename)
          end
    def pic
        read_attribute(:pic)
          end
    def rec=(uploaded_io)
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
                file.write(uploaded_io.read)
                  end
          write_attribute(:rec,uploaded_io.original_filename)
            end
      def rec 
          read_attribute(:rec)
            end
end
