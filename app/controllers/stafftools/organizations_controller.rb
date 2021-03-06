# frozen_string_literal: true
module Stafftools
  class OrganizationsController < StafftoolsController
    before_action :set_organization

    decorates_assigned :organization

    def show
    end

    private

    def set_organization
      @organization = Organization.includes(:users).find_by!(id: params[:id])
    end
  end
end
