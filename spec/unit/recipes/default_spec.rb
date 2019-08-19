#
# Cookbook:: node
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    let(:chef_run) do
    runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
    runner.converge(described_recipe)
    end
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install python' do
      expect(chef_run).to include_package "python"
    end

    it 'should install python-pip' do
      expect(chef_run).to include_package "python-pip"
    end
  end
end
