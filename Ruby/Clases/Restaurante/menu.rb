 module Menu
    class Menu
        attr_accessor :menu

        def load_menu
            file = IO.readlines("products.txt")
            file.each do |product|
              code, name, price, available = product.chomp.split("-")
              @products[code.to_sym] = { code: code, name: name, price: price.to_f, available: true?(available) }
            end
        end
    end
end
