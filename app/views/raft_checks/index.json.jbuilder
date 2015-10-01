json.array!(@raft_checks) do |raft_check|
  json.extract! raft_check, :id, :contact_code, :raft_code, :date, :any_species, :mink, :mink_scat, :bird, :cat, :hedgehog, :mouse, :otter, :pine_marten, :rat, :squirrel, :stoat, :water_vole, :weasel, :unidentif, :comments
  json.url raft_check_url(raft_check, format: :json)
end
