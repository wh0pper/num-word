require('rspec')
require('word_num')

describe('#convert') do
  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(3)
    expect(num.convert()).to(eq("three"))
  end

  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(15)
    expect(num.convert()).to(eq("fifteen"))
  end

  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(25)
    expect(num.convert()).to(eq("twenty five"))
  end

  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(12345)
    expect(num.convert()).to(eq("twelve thousand three hundred forty five"))
  end

  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(23456789)
    expect(num.convert()).to(eq("twenty three million four hundred fifty six thousand seven hundred eighty nine"))
  end

  it("takes a single digit numberr and makes dem a word") do
    num = Word_num.new(1234567890)
    expect(num.convert()).to(eq("one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety "))
  end
end
