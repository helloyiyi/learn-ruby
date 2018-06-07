module ApplicationHelper

    def get_season()

        time = Time.new
        if(time.month >=3) && (time.month <= 5)
            "Yeah it is Spring"
        elseif(time.month >5) && (time.month <= 8)
            "Everyone loves Summer"
        elseif(time.month >8) && (time.month <= 10)
            "Put on coat because it is autumn" 
        else
            "Yuck Winter"      
        end
    end

    def get_random_number(max_value = 10)
        rand(max_value)
    end

end
