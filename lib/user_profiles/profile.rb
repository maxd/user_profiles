module UserProfiles
  class Profile
    attr_reader :gender
    attr_reader :picture_path
    attr_reader :picture_url

    def initialize(gender)
      @gender = gender

      case gender
        when :male
          @picture_path = File.join(Engine.root, 'app', 'assets', 'images', 'men', "#{Helper::men_ids.next}.jpg")
        when :female
          @picture_path = File.join(Engine.root, 'app', 'assets', 'images', 'women', "#{Helper::women_ids.next}.jpg")
      end
    end

  end
end