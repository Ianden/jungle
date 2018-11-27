class UserMailer < ApplicationMailer
	default from: 'no-reply@jungle.com'

	def order_confirmed(order)
		@order = order
		mail(to: '@order.email', subject: 'Your order has been placed')
	end
end
	