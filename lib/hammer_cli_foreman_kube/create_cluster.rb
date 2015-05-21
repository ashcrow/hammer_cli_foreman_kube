require 'hammer_cli'
require 'hammer_cli_foreman'

module HammerCLIForemanKube

  class KubeCommand < HammerCLIForeman::Command

      resource :kube
      command_name 'kube'

      class ListCommand < HammerCLIForeman::ListCommand
        output do
          field :id,'Id'
          field :cluster,'Cluster'
          field :environment_id,'EnvironmentId'
          field :compute_resource_id,'ComputeResourceId'
        end

        build_options
      end

      class InfoCommand < HammerCLIForeman::InfoCommand
        failure_message 'Could not find the requested cluster'
        output do
          field :id,'Id'
          field :cluster,'Cluster'
          field :environment_id,'EnvironmentId'
          field :compute_resource_id,'ComputeResourceId'
        end

        build_options
      end

      class CreateCommand < HammerCLIForeman::CreateCommand
        success_message 'Kubernetes cluster created'
        failure_message 'Could not create the cluster'

        build_options
      end

      class DeleteCommand < HammerCLIForeman::DeleteCommand
        success_message 'Kubernetes cluster deleted'
        failure_message 'Could not delete the cluster'

        build_options
      end

      autoload_subcommands
  end
end
