module AWS
  def self.cp(bucket, remote_file, local_file)
    `aws s3 cp #{local_file} s3://#{bucket}/#{remote_file} --dryrun`
  end

  def self.delete(bucket, prefix)
    `aws s3 rm --recursive s3://#{bucket}/#{prefix} --dryrun`
  end
end