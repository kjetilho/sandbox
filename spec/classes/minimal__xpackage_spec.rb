require 'spec_helper'

describe 'minimal::xpackage' do
  on_supported_os.each do |os, facts|
    context "on #{os} family #{facts[:osfamily]} facter #{facts[:facterversion]}" do
      let(:facts) { facts }
      case facts[:osfamily]
      when 'windows'
        it { should compile }
        it { should contain_package('foo') }
      else
        it { should compile }
        it { should contain_package('foo') }
      end
    end
  end
end
