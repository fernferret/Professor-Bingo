class User < ActiveRecord::Base
	attr_accessible :username, :email, :password, :password_confirmation
	acts_as_authentic { |c| c.validate_password_field = false }
	has_many :boards
	protected
	def valid_ldap_credentials?(password_plaintext)
		# try to authenticate against the LDAP server
		ldap = Net::LDAP.new
		ldap.host = "rose-hulman.edu"
		ldap.port = 389
		ldap.add "dc=rose-hulman,dc=edu"
		
		# first create the username/password strings to send to the LDAP server
		# in our case we need to add the domain so it looks like COMPANY\firstname.lastname
		ldap.auth "ROSE-HULMAN.EDU\\" + self.username, self.password
		ldap.bind # will return false if authentication is NOT successful
	end
end
