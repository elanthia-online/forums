module Docker
  def self.exec(container, command)
    `docker exec -it #{container} #{command}`
  end

  def self.cp_from(container, container_path, host_path)
    `docker cp #{container}:#{container_path} #{host_path}`
  end

  def self.cp_into(container, container_path, local_path)
    `docker cp #{host_path} #{container}:#{container_path}`
  end
end