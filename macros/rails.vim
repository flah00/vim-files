Rnavcommand api app/api/api -glob=**/*
Rnavcommand api_v1 app/api/api_v1 -glob=* -default=model()
Rnavcommand entity_v1 app/api/api_v1/entities -glob=**/* -default=model()
Rnavcommand observer app/observers -glob=**/*
Rnavcommand job app/jobs -glob=**/*
Rnavcommand mixin app/mixins -glob=**/*
Rnavcommand uploader app/uploaders -glob=**/* -suffix=_uploader.rb -default=model()
Rnavcommand factory spec/factories -glob=**/* -default=model()
Rnavcommand config config -suffix=.yml -default=application
