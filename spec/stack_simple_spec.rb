# Copyright 2016 Chris Horton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative 'spec_helper.rb'
require_relative '../lib/stack_simple'

include StackSimple

describe Stack do
  before :each do
    @stack = Stack.new
  end

  it 'is a Stack object' do
    expect(@stack).to be_kind_of(Stack)
  end

  it 'has a count of 0' do
    expect(@stack.count).to eq(0)
  end

  it 'returns true when empty?' do
    expect(@stack.empty?).to eq(true)
  end

  it 'pushes a key onto the stack' do
    @stack.push(1)
    expect(@stack.count).to eq(1)
  end

  it 'returns false when !empty?' do
    @stack.push(1)
    expect(@stack.empty?).to eq(false)
  end

  it 'returns a key off the stack without removing it' do
    @stack.push(1)
    @stack.push(2)
    expect(@stack.count).to eq(2)
    k = @stack.top
    expect(@stack.count).to eq(2)
    expect(k).to eq(2)
  end

  it 'pops a key off the stack' do
    @stack.push(1)
    expect(@stack.count).to eq(1)
    k = @stack.pop
    expect(@stack.count).to eq(0)
    expect(k).to eq(1)
  end
end
