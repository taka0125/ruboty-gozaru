require 'ruboty/gozaru'

RSpec.describe Ruboty::Handlers::Gozaru do
  let(:robot) { Ruboty::Robot.new }

  describe '#gozaru' do
    let(:input) { 'abc' }
    it "append 'ござる'" do
      expect(robot).to receive(:say).with(hash_including(body: input + 'でござる'))
      robot.receive(body: "#{robot.name} gozaru #{input}")
    end
  end
end
