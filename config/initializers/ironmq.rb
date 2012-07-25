IRON_MQ = IronMQ::Client.new(
   token:        EY::Config.get(:ironmq, 'IRON_MQ_TOKEN' ),
   project_id:   EY::Config.get(:ironmq, 'IRON_MQ_PROJECT_ID' )
)