require 'hammer_cli_foreman'

module HammerCLIForemanKube
  def self.exception_handler_class
    HammerCLIForeman::ExceptionHandler
  end

  require 'hammer_cli_foreman_kube/create_cluster'

  HammerCLI::MainCommand.lazy_subcommand(
    'kube',
    'Manipulate kubernetes clusters',
    'HammerCLIForemanKube::KubeCommand',
    'hammer_cli_foreman_kube/create_cluster')
end
