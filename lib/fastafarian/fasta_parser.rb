module Fastafarian
  class FastaParser
    def self.parse(input)
      results = []
      strings = split_apart(input)
      strings.each do |string|
        fasta = string.lines
        id = fasta.shift[/\d{4}/]
        strand = fasta.join.split("\n").join.chomp
        results << Fasta.new(id:id,strand:strand)
      end
      results
    end

    private

    def self.split_apart(input)
      input.split(">").reject(&:empty?)
    end
  end
end
