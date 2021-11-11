# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Mockup
      def self.printfiles(product_id, query = {})
        get(
          Resource::PrintfileInfo,
          "/mockup-generator/printfiles/#{product_id}",
          query: query.slice(:orientation, :technique)
        )
      end

      def self.create_task(product_id, body)
        post(Resource::Task, "/mockup-generator/create-task/#{product_id}", body: body.to_json)
      end

      def self.task_info(task_key)
        get(Resource::Task, "/mockup-generator/task", query: {
          task_key: task_key,
        })
      end
    end
  end
end
