module UserProfiles
  class Helper

    class << self

      def men_ids
        @@men_ids ||= begin
          ids = 100.times.to_a.shuffle
          Enumerator.new do |y|
            loop do
              ids.each do |id|
                y.yield id
              end
            end
          end
        end
      end

      def women_ids
        @@women_ids ||= begin
          ids = 100.times.to_a.shuffle
          Enumerator.new do |y|
            loop do
              ids.each do |id|
                y.yield id
              end
            end
          end
        end
      end

    end

  end
end