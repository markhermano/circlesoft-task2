module Api
    module V1
        class TransactionsController < ApplicationController
            def extax
                transactions = Transaction.select('id, trans_date, trans_total_extax_value').where('extract(year from trans_date) = ?', params[:year])
                render json: {status: 'SUCCESS', message:'Loaded transactions', data:transactions}, status: :ok
            end
            def grossprofit
                year = params[:year].to_i
                prev_year = year - 1
                transactions = Transaction.select('id, trans_date, last_buy_price, trans_total_extax_value').where('extract(year from trans_date) = ?', prev_year.to_s).or(Transaction.select('id, trans_date, last_buy_price, trans_total_extax_value').where('extract(year from trans_date) = ?', year.to_s))
                render json: {status: 'SUCCESS', message:'Loaded transactions', data:transactions}, status: :ok
            end
        end
    end
end