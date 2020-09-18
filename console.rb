require_relative './lib/transfer'
require_relative './lib/bank_account'
require "pry"


@open = BankAccount.new("Kat Dennings")
@open.balance = 1000
@broke = BankAccount.new("Kat Dennings")
@broke.balance = 0
@closed = BankAccount.new("Beth Behrs")
@closed.status = "closed"

binding.pry