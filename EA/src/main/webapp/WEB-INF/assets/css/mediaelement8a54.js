/* global mejs, _wpmejsSettings */
(function ($) {
	// add mime-type aliases to MediaElement plugin support
	mejs.plugins.silverlight[0].types.push('video/x-ms-wmv');
	mejs.plugins.silverlight[0].types.push('audio/x-ms-wma');

	$(function () {
		var settings = {};

		var full_settings = {
			videoWidth: '100%',
			videoHeight: '100%',
			enableAutosize: true
		};

		if ( $( document.body ).hasClass( 'mce-content-body' ) ) {
			return;
		}

		if ( typeof _wpmejsSettings !== 'undefined' ) {
			settings.pluginPath = _wpmejsSettings.pluginPath;
		}

		settings.success = function (mejs) {
			var autoplay = mejs.attributes.autoplay && 'false' !== mejs.attributes.autoplay;
			if ( 'flash' === mejs.pluginType && autoplay ) {
				mejs.addEventListener( 'canplay', function () {
					mejs.play();
				}, false );
			}
		};

		$('.wp-audio-shortcode').mediaelementplayer( settings );

		// add support for background videos
		$videoShortcode = $('.wp-video-shortcode');

		$videoShortcode.each(function() {
			if ($(this).parents(".background-video").length != 0) {
				mejs.MepDefaults.startVolume = 0;
				mejs.MepDefaults.clickToPlayPause = false;

				var videoPlayer = $(this).mediaelementplayer( full_settings );
			}
			else {
				$(this).mediaelementplayer( settings );
			}

		});
	});

}(jQuery));