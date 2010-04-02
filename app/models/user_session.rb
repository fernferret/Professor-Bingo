class UserSession < Authlogic::Session::Base
	verify_password_method :valid_ldap_credentials?
	
#	protected
#	def valid_ldap_credentials?(password_plaintext)
#		# try to authenticate against the LDAP server
#		ldap = Net::LDAP.new
#		ldap.host = "dc-1.rose-hulman.edu"
#		# first create the username/password strings to send to the LDAP server
#		# in our case we need to add the domain so it looks like COMPANY\firstname.lastname
#		ldap.auth "ROSE-HULMAN.EDU\\" + self.login, password_plaintext
#		ldap.bind # will return false if authentication is NOT successful
#	end
end