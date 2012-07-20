IRON_MQ = IronMQ::Client.new(
   token:        EY::Config.get(:ironworker, 'IRON_WORKER_PROJECT_ID'),
   project_id:   EY::Config.get(:ironworker, 'IRON_WORKER_TOKEN')
)