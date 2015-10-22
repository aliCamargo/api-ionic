set :rvm_ruby_version, '2.0.0-p247'
set :rvm_type, :system
# set :shared_children, shared_children + %w{public/uploads/applicant/doc public/uploads/job/company_logo}


set :stage,           :production
server '66.175.217.209', port: 7171, roles: [:web, :app, :db], primary: true

# set :sidekiq_role, :app
# set :sidekiq_env, fetch(:stage)

set :default_env, {
                    'RAILS_ENV' => 'production',

                    'DB_NAME' => 'macsa_prouction',
                    'DB_USER' => 'macsa_db',
                    'DB_PASSWORD' => 'm4cs4Us3r!DB',

                    'EMAIL_USERNAME' => '',
                    'EMAIL_PASSWORD' => '',

                    # 'SECRET_KEY' => '69ccec8c0cdb044d4811f983820b53a55479b140ca97b140b77a751e72bf8c3bef211a8ed4a59221d4ab85d55e5ef882b47681356b2b6e47607a017361ab7192',
                    # 'SECRET_KEY_BASE' => '93ec3f2d3d4ba29976afbac412400412e86b17bfb437547fa7a71f334478a35b38e90431058c78b748a13d2ff29cf9f5e50e4bd69ca58b57851147b0c440e465',
                    'DEVISE_SECRET_KEY' => '4bdf5fd9ebb4bda649d2f34a9b2888788c25ed991177f9b9b4a000ecc308c2e255d545e81886ccce83f71f75085f8fc5c9fed3f8f26107778c8f4b83c9939c43',
                    'SECRET_KEY_BASE_TEST' => 'e098448bae79dcb010de68196c685c895d51ad38ab3763b3ce480a6d695fc98b8e978bd0b645485d731e5382e0236de3828a92b63376f3243bb78146a4d89a53',

                }


# set :whenever_environment, defer { stage }
# set :whenever_identifier, defer { "#{application}_#{stage}" }
# set :whenever_command, "bundle exec whenever"
# require "whenever/capistrano"


# /usr/local/rvm/gems/ruby-2.0.0-p247