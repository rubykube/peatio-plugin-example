module APIv2
  class Alphabet < Grape::API
    # Uncomment this to require authentication.
    # before { authenticate! }

    desc 'Returns English alphabet.'
    params do
      optional :case, type: String, default: 'lowercase', values: %w[ lowercase uppercase ], desc: 'Specify what case should be used for generated letters.'
    end
    get '/alphabet' do
      body case params[:case]
        when 'uppercase' then ('A'..'Z')
        else ('a'..'z')
      end.to_a
      status 200
    end
  end
end
