require 'spec_helper'
require 'yaml'
require 'puppet/provider/vcenter'
require 'rspec/mocks'
require 'fixtures/unit/puppet/provider/vc_vm_ovf/vc_vm_ovf_fixture'

describe "vm export import behavior testing" do
  before(:each) do
    @fixture = Vc_vm_ovf_fixture.new

  end

  context "when vc_vm_ovf provider is created " do
    it "should have a create method defined for vc_vm_ovf" do
      @fixture.provider.class.instance_method(:create).should_not == nil
    end

    it "should have a destroy method defined for vc_vm_ovf" do
      @fixture.provider.class.instance_method(:destroy).should_not == nil
    end

    it "should have a exists? method defined for vc_vm_ovf" do
      @fixture.provider.class.instance_method(:exists?).should_not == nil
    end

    it "should have a parent 'Puppet::Provider::Vcentre'" do
      @fixture.provider.should be_kind_of(Puppet::Provider::Vcenter)
    end
  end

  context "when vc_vm_ovf is created " do
    it "should import ovf if file exist" do

    end

    it "should not import ovf if file does not exist" do

    end
  end

  context "when vc_vm_ovf calls destroy " do
    it "should export ovf if vm exist" do

    end

    it "should not export ovf if vm does not exist" do

    end
  end


end
