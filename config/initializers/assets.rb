# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

Rails.application.config.assets.precompile += %w( theme/jquery-1.11.2.min.js )
Rails.application.config.assets.precompile += %w( theme/jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( theme/jquery.easing.js )
Rails.application.config.assets.precompile += %w( theme/jquery.fitvids.js )
Rails.application.config.assets.precompile += %w( theme/jquery.viewportchecker.js )
Rails.application.config.assets.precompile += %w( theme/jquery.stellar.min.js )
Rails.application.config.assets.precompile += %w( theme/wow.min.js )
Rails.application.config.assets.precompile += %w( theme/jquery.colorbox-min.js )
Rails.application.config.assets.precompile += %w( theme/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( theme/isotope.pkgd.min.js )
Rails.application.config.assets.precompile += %w( theme/masonry.pkgd.min.js )
Rails.application.config.assets.precompile += %w( theme/imagesloaded.pkgd.min.js )
Rails.application.config.assets.precompile += %w( theme/mediaelement-and-player.min.js )
Rails.application.config.assets.precompile += %w( theme/sidebar-menu.js )
Rails.application.config.assets.precompile += %w( theme/js/theme.js )
Rails.application.config.assets.precompile += %w( theme/js/navigation.js )