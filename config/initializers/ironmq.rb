IRON_MQ = IronMQ::Client.new(
   token:        EY::Config.get(:iron_worker, 'IRON_WORKER_PROJECT_ID'),
   project_id:   EY::Config.get(:iron_worker, 'IRON_WORKER_TOKEN')
)