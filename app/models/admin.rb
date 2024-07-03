class Admin < ApplicationRecord

    has_secure_password

    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
    validates :password_digest, presence: true

    def self.create_record(params)
        name = params[:name]
        email = params[:email]
        password = params[:password]        
    
        sql = <<-SQL
          INSERT INTO admins (name, email, password_digest, created_at, updated_at)
          VALUES (?, ?, ?, ?, ?)
        SQL
    
        sanitized_sql = sanitize_sql_array([sql, name, email, password, Time.now, Time.now])
        connection.execute(sanitized_sql)
      end

      def self.authenticate(email, password)
        user = find_by_sql(["SELECT * FROM admins WHERE email = ?", email]).first
    
        if user && user.password_digest == password
          user
        else
          nil
        end
      end
    
    
end
