Rnavcommand jst app/assets/templates/ -glob=**/* -suffix=.jst.hamlc
Rnavcommand api app/api -glob=**/*
Rnavcommand entity app/api/api_v1/entities -glob=**/*
Rnavcommand observer app/observers -glob=**/*
Rnavcommand job app/jobs -glob=**/*
Rnavcommand mixin app/mixins -glob=**/*
Rnavcommand uploader app/uploaders -glob=**/* -suffix=_uploader.rb -default=model()
Rnavcommand factory spec/factories -glob=**/* -default=model()
Rnavcommand config config -suffix=.yml -default=application
