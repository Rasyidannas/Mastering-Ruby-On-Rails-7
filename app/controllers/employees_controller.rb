class EmployeesController < ApplicationController
  def index
    #Plain Text, Signed, Encrypted
    cookies[:emp_name] = "Hey! I am a Palin Text Cookie"
    cookies[:exp_cookies] = { value: "Rasyid Annas", expires: Time.now + 2.minutes }
    cookies.signed[:user_id] = "Hey! I can be decoded, but can't be modified as I am cryptographically signed!"
    cookies.encrypted[:credit_card] = "Hey! I can't be decoded nor can be modified as I am authenticated at the time decryption"
  end
end
