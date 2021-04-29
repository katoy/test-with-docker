# frozen_string_literal: true

RSpec.describe 'sample', type: :system, js: true do
  scenario 'sample scenario' do
    # ルートページ内容
    visit root_path
    expect(current_path).to eq root_path
    expect(page).to have_content 'こんにちは'
    page.driver.save_screenshot 'screenshots/root.png'
  end

  scenario 'sample failer scenario' do
    # tmp/scrennshots/ に失敗時のスクリーンショットが保存される、
    visit root_path
    # わざと失敗させてみる
    expect(page).to have_content 'こんばんは'
  end
end
