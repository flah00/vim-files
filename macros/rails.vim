Rnavcommand jst app/assets/javascripts/templates -glob=**/*
Rnavcommand api app/api -glob=**/* -default=model()
Rnavcommand entity app/api/api_v1/entities -glob=**/* -default=model()
Rnavcommand observer app/observers -glob=**/*
Rnavcommand job app/jobs -glob=**/*
Rnavcommand mixin app/mixins -glob=**/*
Rnavcommand uploader app/uploaders -glob=**/* -suffix=_uploader.rb -default=model()
Rnavcommand factory spec/factories -glob=**/* -default=model()
Rnavcommand config config -suffix=.yml -default=application
