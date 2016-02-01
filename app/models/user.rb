#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  after_destroy :ensure_an_admin_remains

  private
    def ensure_an_admin_remains
      puts "I'm in User#ensure_an_admin_remains"
      puts "****************************"
      if User.count.zero?
        raise "Can't delete last user"
      end
    end     
end
