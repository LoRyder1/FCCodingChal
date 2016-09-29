describe 'Fixnum' do

  let(:prime) {2}
  let(:composite_num) {4}

  describe '#is_prime?' do
    context 'prime number will return true' do
      it {expect(prime.is_prime?).to eq true}
    end

    context 'composite num will return false' do
      it {expect(composite_num.is_prime?).to eq false}
    end
  end
end

describe 'TableOfPrimes' do

  subject {TableOfPrimes.new}

  describe '#prime_numbers' do
    it 'will find the first 4 prime numbers' do
      subject.prime_numbers(4)
      expect(subject.primes).to match_array([2,3,5,7])
    end
  end

  describe '#create_table' do
    it 'creates a multiplication table of prime numbers' do
      subject.prime_numbers(4)
      print_output ="     2    3    5    7    \n     ---- ---- ---- ---- \n2  | 4    6    10   14   \n3  | 6    9    15   21   \n5  | 10   15   25   35   \n7  | 14   21   35   49   \n"
      expect{subject.create_table}.to output(print_output).to_stdout
    end
  end

  describe '#create_matrix' do
    it 'creates a 2D matrix multiplication table of primes' do
      subject.prime_numbers(4)
      subject.create_matrix
      expect(subject.matrix).to eq [["", 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]]
    end
  end

  describe '#functional_programming' do
    it 'creates a 2D matrix multiplication table of primes' do
      subject.prime_numbers(4)
      subject.functional_programming(4)
      expect(subject.matrix).to eq [["", 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]]
    end
  end
end