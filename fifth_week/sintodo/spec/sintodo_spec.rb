require_relative "../lib/sintodo"

describe Sintodo do
	describe "TaskList" do
		it "add a task in an array of tasks" do
			taskList = Sintodo::TaskList.new
			expect(taskList.add_task("hacer la compra")).to include(Sintodo::Task)
		end
	end

	describe "TaskList" do
		it "remove a task in an array of tasks" do
		taskList = Sintodo::TaskList.new
		expect(taskList.remove_task(3)).to exclude(@tasklist)


end
