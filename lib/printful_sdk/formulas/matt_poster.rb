# frozen_string_literal: true

module PrintfulSdk
  module Formula
    class MattPoster
      attr_reader :task, :error_message

      def initialize(image_url)
        @image_url = image_url
        @product_id = 1
        @variant_ids = [1]
        @task = nil
        @error_message = nil
      end

      def generate_mockup
        payload = {
          variant_ids: @variant_ids,
          format: "jpg",
          files: [
            {
              placement: "default",
              image_url: @image_url,
              position: {
                area_width: 7200,
                area_height: 5400,
                width: 5000,
                height: 5000,
                top: 300,
                left: 0,
              },
            },
          ],
        }
        Api::Mockup.create_task(@product_id, payload).tap do |response|
          if response.code == 200
            @task = response.result
          else
            @error_message = response.error.message
          end
        end
      end

      def fetch_task_info
        unless @task
          @error_message = "Task not created. Please create the task first."
          return nil
        end
        response = Api::Mockup.task_info(@task.task_key)
        if response.code == 200
          @task = response.result
        end
      end
    end
  end
end
