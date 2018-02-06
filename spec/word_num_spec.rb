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
end
