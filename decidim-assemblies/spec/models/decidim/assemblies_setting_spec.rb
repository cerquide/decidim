# frozen_string_literal: true

require "spec_helper"

module Decidim
  describe AssembliesSetting do
    subject(:assemblies_setting) { build(:assemblies_setting) }

    it { is_expected.to be_valid }

    context "without organization" do
      before do
        assemblies_setting.organization = nil
      end

      it { is_expected.to be_invalid }
    end
  end
end
