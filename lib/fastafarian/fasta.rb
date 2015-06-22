module Fastafarian
  class Fasta
    attr_reader :id, :strand
    def initialize(id:nil,strand:nil)
      @id = id
      @strand = strand
    end


    def inspect
      to_s
    end

    def to_s
      "Rosalind_#{id}"
    end
  end
end
