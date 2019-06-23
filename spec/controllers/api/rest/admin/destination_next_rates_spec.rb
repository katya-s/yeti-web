# frozen_string_literal: true

require 'spec_helper'

describe Api::Rest::Admin::DestinationNextRatesController, type: :controller do
  include_context :jsonapi_admin_headers

  describe 'GET index with ransack filters' do
    let(:factory) { :destination_next_rate }

    it_behaves_like :jsonapi_filters_by_number_field, :initial_rate
    it_behaves_like :jsonapi_filters_by_number_field, :next_rate
    it_behaves_like :jsonapi_filters_by_number_field, :initial_interval
    it_behaves_like :jsonapi_filters_by_number_field, :next_interval
    it_behaves_like :jsonapi_filters_by_number_field, :connect_fee
    it_behaves_like :jsonapi_filters_by_datetime_field, :apply_time
    it_behaves_like :jsonapi_filters_by_datetime_field, :created_at
    it_behaves_like :jsonapi_filters_by_datetime_field, :updated_at
    it_behaves_like :jsonapi_filters_by_boolean_field, :applied
    it_behaves_like :jsonapi_filters_by_number_field, :external_id
  end
end