module CLI
    @@current_user = nil
    @@current_result = nil


    def self.current_user
        @@current_user
    end

      def self.current_user=(user)
        @@current_user = user
    end

    def self.current_result
      @@current_result
    end

    def self.current_result=(result)
      @@current_result = result
    end 

end