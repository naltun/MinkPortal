class AddRaftCodeIndexToRaftChecks < ActiveRecord::Migration
  def change
    add_index :raft_checks, :raft_code
  end
end
