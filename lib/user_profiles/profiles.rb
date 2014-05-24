module UserProfiles
  def self.profiles(options = {})
    Enumerator.new do |y|
      loop do
        gender = options[:gender] ? options[:gender] : [:male, :female].sample
        y.yield Profile.new(gender)
      end
    end
  end
end
