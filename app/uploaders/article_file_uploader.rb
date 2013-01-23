class ArticleFileUploader < CarrierWave::Uploader::Base

  storage :active_record

  # Not required if CarrierWave::Uploader::Store#filename() proxies to the stored file.
  def filename
    self.file.filename
  end

end
