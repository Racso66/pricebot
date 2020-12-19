module Lita
  module Handlers
    class Bot < Handler
      route(
        /^Hi/i,
        :customer
      )

      route(
        /^i want a/i,
        :negotiate
      )

      route(
        /^do you have/i,
        :negotiate
      )

      def customer(response)
        response.reply("Hi, this is store agent. how may i help you!")
      end

      def negotiate(response)
        #here it will respont with list of requested product.
        response.reply("we have these brands, which one do you want please!")
      end

      Lita.register_handler(self)
    end
  end
end
