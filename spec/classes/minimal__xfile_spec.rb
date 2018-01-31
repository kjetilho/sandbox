require 'spec_helper'

describe 'minimal::xfile' do
  on_supported_os.each do |os, facts|
    context "on #{os} family #{facts[:osfamily]} facter #{facts[:facterversion]}" do
      let(:facts) { facts }
      it { should compile }
      case facts[:osfamily]
      when 'windows'
        it { should contain_file('c:/foo.log') }
        it { should_not contain_file('/foo.log') }
      else
        it { should_not contain_file('c:/foo.log') }
        it { should contain_file('/foo.log') }
      end
    end
  end
end
