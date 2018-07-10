# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180710061954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"
  enable_extension "pg_stat_statements"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "adjustments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "site_id"
    t.float "amount"
    t.text "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_adjustments_on_deleted_at"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "api_users", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.datetime "token_created_at"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token", "token_created_at"], name: "index_api_users_on_token_and_token_created_at"
  end

  create_table "appointment_users", force: :cascade do |t|
    t.integer "appointment_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_appointment_users_on_deleted_at"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "scheduled_at"
    t.integer "site_id"
    t.integer "scheduler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "reason_for_resurvey"
    t.string "source", default: "sprocket"
    t.string "resurvey_note"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.integer "user_id"
    t.datetime "surveyor_arrival_at"
    t.datetime "completed_at"
    t.text "general_notes"
    t.datetime "deleted_at"
    t.text "notes_for_surveyor"
    t.boolean "survey_files_uploaded_in_drive"
    t.integer "app_type", default: 0
    t.index ["deleted_at"], name: "index_appointments_on_deleted_at"
  end

  create_table "bills", force: :cascade do |t|
    t.integer "site_id"
    t.float "jan_usage"
    t.float "feb_usage"
    t.float "march_usage"
    t.float "apr_usage"
    t.float "may_usage"
    t.float "june_usage"
    t.float "july_usage"
    t.float "august_usage"
    t.float "sep_usage"
    t.float "oct_usage"
    t.float "nov_usage"
    t.float "dec_usage"
    t.float "jan_bill"
    t.float "feb_bill"
    t.float "march_bill"
    t.float "apr_bill"
    t.float "may_bill"
    t.float "june_bill"
    t.float "july_bill"
    t.float "august_bill"
    t.float "sep_bill"
    t.float "oct_bill"
    t.float "nov_bill"
    t.float "dec_bill"
    t.string "account_number"
    t.string "special_billing_program"
    t.string "utility_company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.datetime "deleted_at"
    t.text "notes"
    t.index ["deleted_at"], name: "index_bills_on_deleted_at"
  end

  create_table "commission_sites", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "site_id"
    t.string "payment_type"
    t.float "amount"
    t.float "sun_hours"
    t.float "system_size"
    t.float "split_prct"
    t.datetime "contract_approved_at"
    t.datetime "install_completed_at"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "clawback"
    t.index ["deleted_at"], name: "index_commission_sites_on_deleted_at"
  end

  create_table "contact_details", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "color_code"
    t.index ["deleted_at"], name: "index_contact_details_on_deleted_at"
  end

  create_table "customer_sites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "site_id"
    t.string "emails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_customer_sites_on_deleted_at"
  end

  create_table "designs", force: :cascade do |t|
    t.text "consultant_notes"
    t.string "special_requests"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.string "design_id"
    t.string "design_type"
    t.string "current_status"
    t.text "designer_notes"
    t.string "redesign_reason"
    t.text "redesign_reason_notes"
    t.string "panel_type_old"
    t.integer "panel_count_old"
    t.boolean "is_optimal"
    t.datetime "deleted_at"
    t.datetime "qc_completed_at"
    t.datetime "design_completed_at"
    t.datetime "corrections_requested_at"
    t.datetime "corrections_completed_at"
    t.datetime "second_corrections_requested_at"
    t.datetime "second_corrections_completed_at"
    t.string "estimated_system_size"
    t.string "gross_price"
    t.string "estimated_production"
    t.integer "design_offset_percentage"
    t.text "correction_notes"
    t.text "second_correction_notes"
    t.text "general_notes"
    t.boolean "is_contract_design"
    t.datetime "all_proposals_completed_at"
    t.string "design_company"
    t.string "msp_upgrade_required"
    t.integer "existing_site_id"
    t.string "team"
    t.datetime "began_design_at"
    t.datetime "began_proposal_at"
    t.index ["deleted_at"], name: "index_designs_on_deleted_at"
    t.index ["site_id"], name: "index_designs_on_site_id"
  end

  create_table "email_templates", force: :cascade do |t|
    t.text "content", null: false
    t.string "name", null: false
    t.string "subject", null: false
    t.string "custom_name"
    t.integer "created_by", null: false
    t.bigint "parent_template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_favourite", default: false
    t.datetime "deleted_at"
    t.index ["created_by"], name: "index_email_templates_on_created_by"
    t.index ["deleted_at"], name: "index_email_templates_on_deleted_at"
    t.index ["parent_template_id"], name: "index_email_templates_on_parent_template_id"
  end

  create_table "emails", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_details", force: :cascade do |t|
    t.integer "user_id"
    t.integer "office_id"
    t.string "start_date"
    t.string "end_date"
    t.float "panel_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "referred_by"
    t.string "payment_method"
    t.index ["deleted_at"], name: "index_employee_details_on_deleted_at"
  end

  create_table "file_attachments", force: :cascade do |t|
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.string "title"
    t.string "file_upload_type"
    t.bigint "file_upload_id"
    t.datetime "deleted_at"
    t.integer "proposal_id"
    t.integer "user_id"
    t.index ["deleted_at"], name: "index_file_attachments_on_deleted_at"
    t.index ["file_upload_type", "file_upload_id"], name: "index_file_attachments_on_file_upload_type_and_file_upload_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_groups_on_deleted_at"
  end

  create_table "installation_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_installation_companies_on_deleted_at"
  end

  create_table "inverters", force: :cascade do |t|
    t.string "inverter_type"
    t.string "size"
    t.string "count"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_inverters_on_deleted_at"
    t.index ["design_id"], name: "index_inverters_on_design_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.string "stage", default: "lead_qualification"
    t.bigint "site_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.datetime "deleted_at"
    t.boolean "is_notifiable"
    t.boolean "is_bookmarked", default: false
    t.index ["deleted_at"], name: "index_messages_on_deleted_at"
    t.index ["site_id"], name: "index_messages_on_site_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "module_arrays", force: :cascade do |t|
    t.string "azimuth"
    t.string "tilt"
    t.string "compass_direction"
    t.string "module_type"
    t.integer "module_count"
    t.integer "ac_annual"
    t.float "losses"
    t.bigint "design_id"
    t.datetime "deleted_at"
    t.index ["design_id"], name: "index_module_arrays_on_design_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "actor_id"
    t.datetime "read_at"
    t.string "action"
    t.string "tracker_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "alert_type", default: 0
    t.integer "message_id"
    t.index ["deleted_at"], name: "index_notifications_on_deleted_at"
    t.index ["message_id"], name: "index_notifications_on_message_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_offices_on_deleted_at"
  end

  create_table "other_adjustments", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "site_id"
    t.float "amount"
    t.text "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_other_adjustments_on_deleted_at"
  end

  create_table "pay_periods", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_pay_periods_on_deleted_at"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pay_period_id"
    t.float "fc_payment"
    t.float "install_payment"
    t.float "draw"
    t.float "total_adjustments"
    t.float "clawback"
    t.float "recruitment_bonus"
    t.float "total_amount"
    t.boolean "processed", default: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rank_multiplier"
    t.index ["deleted_at"], name: "index_payments_on_deleted_at"
  end

  create_table "permits", force: :cascade do |t|
    t.string "ahj"
    t.datetime "assigned_at"
    t.datetime "submitted_to_ahj_at"
    t.datetime "estimated_first_pickup_at"
    t.string "payment_method"
    t.datetime "estimated_additional_pickup_at"
    t.datetime "issued_at"
    t.datetime "delivered_at"
    t.datetime "received_at"
    t.string "permit_location"
    t.datetime "approved_at"
    t.datetime "uploaded_at"
    t.text "notes"
    t.string "current_status"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.text "ahj_corrections_notes"
    t.datetime "ahj_corrections_completed_at"
    t.text "on_site_redesign_notes"
    t.datetime "on_site_redesign_completed_at"
    t.text "notes_for_runner"
    t.boolean "sent_for_delivery"
    t.string "tracking_number"
    t.integer "permit_type", default: 0
    t.datetime "began_permit_at"
    t.datetime "began_ahj_corrections_at"
    t.datetime "began_on_site_redesign_at"
    t.index ["deleted_at"], name: "index_permits_on_deleted_at"
    t.index ["site_id"], name: "index_permits_on_site_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "site_id"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "phones"
    t.index ["deleted_at"], name: "index_phone_numbers_on_deleted_at"
  end

  create_table "plan_sets", force: :cascade do |t|
    t.string "current_status"
    t.datetime "corrections_requested_at"
    t.text "corrections_notes"
    t.datetime "corrections_completed_at"
    t.datetime "second_corrections_requested_at"
    t.text "second_corrections_notes"
    t.datetime "second_corrections_completed_at"
    t.datetime "updated_in_cpf_at"
    t.datetime "qc_completed_at"
    t.text "general_notes"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.datetime "began_plan_set_at"
    t.index ["deleted_at"], name: "index_plan_sets_on_deleted_at"
    t.index ["design_id"], name: "index_plan_sets_on_design_id"
  end

  create_table "post_installs", force: :cascade do |t|
    t.string "financing_site_id"
    t.datetime "inverter_registered_at"
    t.datetime "install_photos_uploaded_at"
    t.datetime "meter_info_uploaded_at"
    t.boolean "ho_signature_required"
    t.datetime "ho_signature_received_at"
    t.datetime "system_activation_approved_at"
    t.boolean "permission_to_apply_for_pto"
    t.datetime "pto_submitted_at"
    t.datetime "pto_received_at"
    t.datetime "pto_uploaded_at"
    t.datetime "nem_signed_at"
    t.datetime "nem_sent_at"
    t.datetime "designs_uploaded_at"
    t.datetime "inspection_permit_uploaded_at"
    t.datetime "workorder_submitted_at"
    t.datetime "completion_certification_sent_at"
    t.datetime "completion_certification_signed_at"
    t.datetime "submitted_for_approval_install_at"
    t.datetime "install_stage_approved_at"
    t.datetime "financing_completed_at"
    t.boolean "platform_crosschecking"
    t.string "current_status"
    t.text "work_history"
    t.text "needed_from_installer"
    t.text "needed_from_consultants"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.datetime "completed_at"
    t.datetime "began_post_install_at"
    t.index ["deleted_at"], name: "index_post_installs_on_deleted_at"
    t.index ["site_id"], name: "index_post_installs_on_site_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.string "finance_type"
    t.string "current_status"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "discount_level"
    t.boolean "is_contract_proposal"
    t.string "contract_link"
    t.index ["deleted_at"], name: "index_proposals_on_deleted_at"
    t.index ["design_id"], name: "index_proposals_on_design_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruitment_bonuses", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "user_id"
    t.float "performance"
    t.string "rank"
    t.float "bonus_rate"
    t.float "bonus_amount"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_recruitment_bonuses_on_deleted_at"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_regions_on_deleted_at"
  end

  create_table "requirement_sites", force: :cascade do |t|
    t.integer "requirement_id"
    t.integer "site_id"
    t.boolean "is_satisfied", default: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_requirement_sites_on_deleted_at"
  end

  create_table "requirements", force: :cascade do |t|
    t.integer "stage_id"
    t.string "name"
    t.string "db_key"
    t.text "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_requirements_on_deleted_at"
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.string "external_url"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_resources_on_deleted_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.index ["user_id", "role_id"], name: "index_roles_users_on_user_id_and_role_id"
  end

  create_table "scheduler_template_days", force: :cascade do |t|
    t.integer "scheduler_template_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_scheduler_template_days_on_deleted_at"
  end

  create_table "scheduler_template_slots", force: :cascade do |t|
    t.integer "scheduler_template_day_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer "available_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_scheduler_template_slots_on_deleted_at"
  end

  create_table "scheduler_templates", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_scheduler_templates_on_deleted_at"
  end

  create_table "schedulers", force: :cascade do |t|
    t.datetime "available_at"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer "available_slots"
    t.integer "scheduled_slots", default: 0
    t.integer "user_id"
    t.integer "region_id"
    t.string "source", default: "sprocket"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer "installation_company_id"
    t.integer "scheduler_type", default: 0
    t.index ["deleted_at"], name: "index_schedulers_on_deleted_at"
  end

  create_table "site_stages", force: :cascade do |t|
    t.integer "site_id"
    t.integer "stage_id"
    t.integer "state", default: 0
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_site_stages_on_deleted_at"
  end

  create_table "site_stats", force: :cascade do |t|
    t.string "title_address"
    t.string "title_name"
    t.string "title_status"
    t.string "optimal_panel_count"
    t.string "optimal_system_size"
    t.string "optimal_annual_production"
    t.string "financier"
    t.string "financier_customer_id"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "credit_check_approved_at"
    t.datetime "credit_check_expired_at"
    t.text "reason_for_cancellation"
    t.datetime "cancelled_at"
    t.string "ppa_maximum_allowable_usage"
    t.string "max_panel_count"
    t.string "minimum_ppa_price"
    t.string "current_price_per_kwh"
    t.datetime "green_light_at"
    t.datetime "yellow_light_at"
    t.string "cancelled_by"
    t.datetime "deleted_at"
    t.string "estimated_usage"
    t.string "disqualified_roofs"
    t.text "disqualified_roofs_notes"
    t.datetime "install_completed_at"
    t.datetime "install_approved_at"
    t.datetime "install_scheduled_at"
    t.text "notes_for_installer"
    t.string "hoa_name"
    t.string "hoa_phone"
    t.string "hoa_email"
    t.datetime "install_deadline_at"
    t.string "install_status"
    t.text "hoa_notes"
    t.string "install_approvals", default: "[\"\", \"\", \"\"]"
    t.text "install_schedule_notes"
    t.string "mpu_status"
    t.datetime "mpu_approved_at"
    t.text "mpu_schedule_notes"
    t.datetime "mpu_scheduled_at"
    t.datetime "mpu_completed_at"
    t.integer "installation_company_id"
    t.datetime "began_install_at"
    t.datetime "survey_scheduled_at"
    t.datetime "install_start_at"
    t.datetime "mpu_start_at"
    t.index ["deleted_at"], name: "index_site_stats_on_deleted_at"
    t.index ["site_id"], name: "index_site_stats_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.serial "sgsid"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "user_id"
    t.integer "office_id"
    t.string "referred_by"
    t.string "google_drive_folder_path"
    t.string "crm_id"
    t.string "finance_type_old"
    t.boolean "survey_permission", default: false
    t.string "special_conditions"
    t.text "ra_signature"
    t.boolean "has_credit_check"
    t.string "panels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.datetime "deleted_at"
    t.boolean "survey_time_is_flexible"
    t.datetime "fc_appointment_at"
    t.string "city"
    t.string "zipcode"
    t.text "site_notes"
    t.string "email_permissions"
    t.string "reported_job_status"
    t.text "special_request_signature"
    t.string "construction_work"
    t.string "primary_email"
    t.string "additional_emails"
    t.string "primary_phone"
    t.string "additional_phones"
    t.integer "customer_id"
    t.index ["deleted_at"], name: "index_sites_on_deleted_at"
  end

  create_table "sites_users", force: :cascade do |t|
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "user_id"
    t.index ["deleted_at"], name: "index_sites_users_on_deleted_at"
  end

  create_table "stage_links", force: :cascade do |t|
    t.integer "prerequisite_id"
    t.integer "stage_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_stage_links_on_deleted_at"
  end

  create_table "stages", force: :cascade do |t|
    t.integer "group_id"
    t.string "name"
    t.string "ancestry"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_stages_on_ancestry"
    t.index ["deleted_at"], name: "index_stages_on_deleted_at"
  end

  create_table "tracker_users", force: :cascade do |t|
    t.bigint "lead_evaluation_tracker_id"
    t.bigint "lead_evaluation_user_id"
    t.bigint "design_user_id"
    t.bigint "design_qc_user_id"
    t.bigint "design_designer_id"
    t.bigint "design_user_tracker_id"
    t.bigint "design_qc_user_tracker_id"
    t.bigint "design_designer_tracker_id"
    t.bigint "proposal_user_id"
    t.bigint "proposal_tracker_id"
    t.bigint "contract_tracker_id"
    t.bigint "contract_user_id"
    t.bigint "financing_tracker_id"
    t.bigint "financing_user_id"
    t.bigint "plan_set_user_id"
    t.bigint "plan_set_qc_user_id"
    t.bigint "plan_set_tracker_id"
    t.bigint "plan_set_qc_user_tracker_id"
    t.bigint "permit_user_id"
    t.bigint "permit_tracker_id"
    t.bigint "permit_runner_id"
    t.bigint "permit_runner_tracker_id"
    t.bigint "install_approval_tracker_id"
    t.bigint "install_approval_user_id"
    t.bigint "post_install_id"
    t.bigint "post_install_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["contract_tracker_id"], name: "index_tracker_users_on_contract_tracker_id"
    t.index ["contract_user_id"], name: "index_tracker_users_on_contract_user_id"
    t.index ["deleted_at"], name: "index_tracker_users_on_deleted_at"
    t.index ["design_designer_id"], name: "index_tracker_users_on_design_designer_id"
    t.index ["design_designer_tracker_id"], name: "index_tracker_users_on_design_designer_tracker_id"
    t.index ["design_qc_user_id"], name: "index_tracker_users_on_design_qc_user_id"
    t.index ["design_qc_user_tracker_id"], name: "index_tracker_users_on_design_qc_user_tracker_id"
    t.index ["design_user_id"], name: "index_tracker_users_on_design_user_id"
    t.index ["design_user_tracker_id"], name: "index_tracker_users_on_design_user_tracker_id"
    t.index ["financing_tracker_id"], name: "index_tracker_users_on_financing_tracker_id"
    t.index ["financing_user_id"], name: "index_tracker_users_on_financing_user_id"
    t.index ["install_approval_tracker_id"], name: "index_tracker_users_on_install_approval_tracker_id"
    t.index ["install_approval_user_id"], name: "index_tracker_users_on_install_approval_user_id"
    t.index ["lead_evaluation_tracker_id"], name: "index_tracker_users_on_lead_evaluation_tracker_id"
    t.index ["lead_evaluation_user_id"], name: "index_tracker_users_on_lead_evaluation_user_id"
    t.index ["permit_runner_id"], name: "index_tracker_users_on_permit_runner_id"
    t.index ["permit_runner_tracker_id"], name: "index_tracker_users_on_permit_runner_tracker_id"
    t.index ["permit_tracker_id"], name: "index_tracker_users_on_permit_tracker_id"
    t.index ["permit_user_id"], name: "index_tracker_users_on_permit_user_id"
    t.index ["plan_set_qc_user_id"], name: "index_tracker_users_on_plan_set_qc_user_id"
    t.index ["plan_set_qc_user_tracker_id"], name: "index_tracker_users_on_plan_set_qc_user_tracker_id"
    t.index ["plan_set_tracker_id"], name: "index_tracker_users_on_plan_set_tracker_id"
    t.index ["plan_set_user_id"], name: "index_tracker_users_on_plan_set_user_id"
    t.index ["post_install_id"], name: "index_tracker_users_on_post_install_id"
    t.index ["post_install_user_id"], name: "index_tracker_users_on_post_install_user_id"
    t.index ["proposal_tracker_id"], name: "index_tracker_users_on_proposal_tracker_id"
    t.index ["proposal_user_id"], name: "index_tracker_users_on_proposal_user_id"
  end

  create_table "trackers", force: :cascade do |t|
    t.text "contract_notes"
    t.text "financing_notes"
    t.text "lead_evaluation_notes"
    t.string "reason_for_hold"
    t.datetime "on_hold_until_at"
    t.text "needed_from_consultants"
    t.datetime "shade_study_uploaded_at"
    t.datetime "trust_doc_uploaded_at"
    t.string "welcome_confirmation_number"
    t.datetime "financing_agreement_signed_at"
    t.datetime "cash_downpayment_verified_at"
    t.datetime "contract_approved_at"
    t.datetime "contract_signed_at"
    t.datetime "financing_approved_at"
    t.text "questions_for_management"
    t.string "spruce_id"
    t.string "contract_current_status"
    t.string "financing_current_status"
    t.string "lead_eval_current_status"
    t.boolean "higher_bill_needed"
    t.datetime "spruce_sale_completed_at"
    t.datetime "spruce_build_completed_at"
    t.datetime "spruce_activate_completed_at"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "lead_eval_approved_at"
    t.string "install_office_is_correct"
    t.string "signatures_are_correct"
    t.string "address_verified"
    t.string "trust_doc_needed"
    t.datetime "deleted_at"
    t.boolean "approved_for_survey", default: false
    t.string "roof_material"
    t.string "roof_add_ons", default: "[\"\", \"\", \"\"]"
    t.float "contract_total_price"
    t.boolean "income_proof_required", default: false
    t.datetime "income_approved_at"
    t.string "dividend_id"
    t.datetime "began_lead_eval_at"
    t.datetime "began_contract_at"
    t.datetime "began_financing_at"
    t.index ["deleted_at"], name: "index_trackers_on_deleted_at"
    t.index ["site_id"], name: "index_trackers_on_site_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source", default: "sprocket"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "designs", "sites"
  add_foreign_key "messages", "sites"
  add_foreign_key "messages", "users"
  add_foreign_key "permits", "sites"
  add_foreign_key "post_installs", "sites"
  add_foreign_key "site_stats", "sites"
  add_foreign_key "trackers", "sites"
end
