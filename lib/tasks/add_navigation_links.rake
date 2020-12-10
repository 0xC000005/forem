# rubocop:disable Metrics/BlockLength
namespace :navigation_links do
  desc "Update DEV's navigation_links"
  task update: :environment do
    protocol = ApplicationConfig["APP_PROTOCOL"].freeze
    domain = Rails.application&.initialized? ? SiteConfig.app_domain : ApplicationConfig["APP_DOMAIN"]
    base_url = "http://yuegaoya.org".freeze

    reading_icon = File.read(Rails.root.join("app/assets/images/twemoji/drawer.svg")).freeze
    thumb_up_icon = File.read(Rails.root.join("app/assets/images/twemoji/thumb-up.svg")).freeze
    smart_icon = File.read(Rails.root.join("app/assets/images/twemoji/smart.svg")).freeze
    look_icon = File.read(Rails.root.join("app/assets/images/twemoji/look.svg")).freeze
    contact_icon = File.read(Rails.root.join("app/assets/images/twemoji/contact.svg")).freeze
    listing_icon = File.read(Rails.root.join("app/assets/images/twemoji/listing.svg")).freeze
    mic_icon = File.read(Rails.root.join("app/assets/images/twemoji/mic.svg")).freeze
    camera_icon = File.read(Rails.root.join("app/assets/images/twemoji/camera.svg")).freeze
    tag_icon = File.read(Rails.root.join("app/assets/images/twemoji/tag.svg")).freeze
    bulb_icon = File.read(Rails.root.join("app/assets/images/twemoji/bulb.svg")).freeze
    shopping_icon = File.read(Rails.root.join("app/assets/images/twemoji/shopping.svg")).freeze
    heart_icon = File.read(Rails.root.join("app/assets/images/twemoji/heart.svg")).freeze
    rainbowdev = File.read(Rails.root.join("app/assets/images/rainbowdev.svg")).freeze

    NavigationLink.where(url: "#{base_url}/readinglist").first_or_create(
      name: "书单",
      icon: reading_icon,
      display_only_when_signed_in: true,
      position: 0,
    )
    NavigationLink.where(url: "#{base_url}/listings").first_or_create(
      name: "卡片",
      icon: listing_icon,
      display_only_when_signed_in: false,
      position: 1,
    )
    NavigationLink.where(url: "#{base_url}/pod").first_or_create(
      name: "播客",
      icon: mic_icon,
      display_only_when_signed_in: false,
      position: 2,
    )
    NavigationLink.where(url: "#{base_url}/videos").first_or_create(
      name: "视频",
      icon: camera_icon,
      display_only_when_signed_in: false,
      position: 3,
    )
    NavigationLink.where(url: "#{base_url}/tags").first_or_create(
      name: "关键词",
      icon: tag_icon,
      display_only_when_signed_in: false,
      position: 4,
    )
    NavigationLink.where(url: "#{base_url}/code-of-conduct").first_or_create(
      name: "鸭的行为准则",
      icon: thumb_up_icon,
      display_only_when_signed_in: false,
      position: 5,
    )
    NavigationLink.where(url: "#{base_url}/faq").first_or_create(
      name: "FAQ",
      icon: bulb_icon,
      display_only_when_signed_in: false,
      position: 6,
    )
    NavigationLink.where(url: "https://shop.dev.to/").first_or_create(
      name: "约稿鸭商店",
      icon: shopping_icon,
      display_only_when_signed_in: false,
      position: 7,
    )
    NavigationLink.where(url: "#{base_url}/sponsors").first_or_create(
      name: "感谢支持",
      icon: heart_icon,
      display_only_when_signed_in: false,
      position: 8,
    )
    NavigationLink.where(url: "#{base_url}/about").first_or_create(
      name: "关于约稿鸭",
      icon: rainbowdev,
      display_only_when_signed_in: false,
      position: 9,
    )
    NavigationLink.where(url: "#{base_url}/privacy").first_or_create(
      name: "隐私政策",
      icon: smart_icon,
      display_only_when_signed_in: false,
      position: 10,
    )
    NavigationLink.where(url: "#{base_url}/terms").first_or_create(
      name: "使用条款",
      icon: look_icon,
      display_only_when_signed_in: false,
      position: 11,
    )
    NavigationLink.where(url: "#{base_url}/contact").first_or_create(
      name: "联系我们",
      icon: contact_icon,
      display_only_when_signed_in: false,
      position: 12,
    )
  end
end
# rubocop:enable Metrics/BlockLength
