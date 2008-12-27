CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `permalink` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  `lft` int(11) default NULL,
  `rgt` int(11) default NULL,
  `position` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `category_type` varchar(255) default NULL,
  `subtitle` varchar(255) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

CREATE TABLE `favour_tag_labels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `shipping_address` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `wedding_date` date default NULL,
  `brides_name` varchar(255) default NULL,
  `grooms_name` varchar(255) default NULL,
  `ordered_invites` tinyint(1) default NULL,
  `item_1` varchar(255) default NULL,
  `item_1_quantity` varchar(255) default NULL,
  `item_2` varchar(255) default NULL,
  `item_2_quantity` varchar(255) default NULL,
  `item_3` varchar(255) default NULL,
  `item_3_quantity` varchar(255) default NULL,
  `item_4` varchar(255) default NULL,
  `item_4_quantity` varchar(255) default NULL,
  `item_5` varchar(255) default NULL,
  `item_5_quantity` varchar(255) default NULL,
  `font_colours` varchar(255) default NULL,
  `special_requests` text,
  `information` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `images` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `product_id` int(11) default NULL,
  `category_id` int(11) default NULL,
  `invite_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `file_file_name` varchar(255) default NULL,
  `file_content_type` varchar(255) default NULL,
  `file_file_size` int(11) default NULL,
  `file_updated_at` datetime default NULL,
  `usage` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `invites` (
  `id` int(11) NOT NULL auto_increment,
  `contact_name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `design_name` varchar(255) default NULL,
  `quantity_required` varchar(255) default NULL,
  `ordered_sample` tinyint(1) default NULL,
  `text_paper` varchar(255) default NULL,
  `paper_layer_2` varchar(255) default NULL,
  `paper_layer_3` varchar(255) default NULL,
  `paper_layer_4` varchar(255) default NULL,
  `font_color` varchar(255) default NULL,
  `ribbon_color` varchar(255) default NULL,
  `special_requests` text,
  `invites_design_name` varchar(255) default NULL,
  `invites_quantity_required` varchar(255) default NULL,
  `invites_sample_ordered` tinyint(1) default NULL,
  `invites_text_paper` varchar(255) default NULL,
  `invites_layer_2` varchar(255) default NULL,
  `invites_layer_3` varchar(255) default NULL,
  `invites_layer_4` varchar(255) default NULL,
  `invites_font_color` varchar(255) default NULL,
  `invites_ribbon_color` varchar(255) default NULL,
  `reply_cards_style` varchar(255) default NULL,
  `map` tinyint(255) default NULL,
  `hotel_info` varchar(255) default NULL,
  `address_labels` tinyint(1) default NULL,
  `coloured_envelopes` tinyint(1) default NULL,
  `lined_envelopes` tinyint(1) default NULL,
  `double_envelopes` tinyint(1) default NULL,
  `invites_special_requests` text,
  `wedding_date` date default NULL,
  `brides_name` varchar(255) default NULL,
  `grooms_name` varchar(255) default NULL,
  `brides_parents` varchar(255) default NULL,
  `grooms_parents` varchar(255) default NULL,
  `ceremony_location` varchar(255) default NULL,
  `reception_location` varchar(255) default NULL,
  `cocktails_time` time default NULL,
  `dinner_time` time default NULL,
  `dance_time` time default NULL,
  `other_time` varchar(255) default NULL,
  `save_the_date_verse` text,
  `invitation_verse` text,
  `rsvp_verse` text,
  `rsvp_envelope_address` text,
  `rsvp_email_phone` varchar(255) default NULL,
  `invites_additional_inserts` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `occasions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `shipping_address` varchar(255) default NULL,
  `shipping_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `design_name` varchar(255) default NULL,
  `quantity` int(11) default NULL,
  `ordered_sample` varchar(255) default NULL,
  `sample_number` varchar(255) default NULL,
  `text_paper` varchar(255) default NULL,
  `text_paper_layer_2` varchar(255) default NULL,
  `text_paper_layer_3` varchar(255) default NULL,
  `text_paper_layer_4` varchar(255) default NULL,
  `font_color` varchar(255) default NULL,
  `ribbon_color` varchar(255) default NULL,
  `print_return` tinyint(1) default NULL,
  `sealing_sticker` tinyint(1) default NULL,
  `colored_envelope` tinyint(1) default NULL,
  `lined_envelope` tinyint(1) default NULL,
  `double_envelope` tinyint(1) default NULL,
  `verse_information` text,
  `type_of_event` varchar(255) default NULL,
  `rsvp_contact` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `other_samples` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `event_date` date default NULL,
  `sample_name_1` varchar(255) default NULL,
  `sample_name_2` varchar(255) default NULL,
  `sample_name_3` varchar(255) default NULL,
  `text_paper` varchar(255) default NULL,
  `text_paper_layer_1` varchar(255) default NULL,
  `text_paper_layer_2` varchar(255) default NULL,
  `text_paper_layer_3` varchar(255) default NULL,
  `text_paper_2` varchar(255) default NULL,
  `text_paper_2_layer_1` varchar(255) default NULL,
  `text_paper_2_layer_2` varchar(255) default NULL,
  `text_paper_2_layer_3` varchar(255) default NULL,
  `text_paper_3` varchar(255) default NULL,
  `text_paper_3_layer_1` varchar(255) default NULL,
  `text_paper_3_layer_2` varchar(255) default NULL,
  `text_paper_3_layer_3` varchar(255) default NULL,
  `font_color_1` varchar(255) default NULL,
  `font_color_2` varchar(255) default NULL,
  `font_color_3` varchar(255) default NULL,
  `ribbon_color_1` varchar(255) default NULL,
  `ribbon_color_2` varchar(255) default NULL,
  `ribbon_color_3` varchar(255) default NULL,
  `special_requests` text,
  `samples_quantity` int(11) default NULL,
  `samples_quantity_cost` int(11) default NULL,
  `paper_samples_quantity` int(11) default NULL,
  `paper_samples_quantity_cost` int(11) default NULL,
  `paper_swatch_deck_quantity` int(11) default NULL,
  `paper_swatch_deck_quantity_cost` int(11) default NULL,
  `ribbon_swatch_deck_quantity` int(11) default NULL,
  `ribbon_swatch_deck_quantity_cost` int(11) default NULL,
  `subtotal` int(11) default NULL,
  `gst` int(11) default NULL,
  `total` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `breadcrumb` varchar(255) default NULL,
  `content` text,
  `parent_id` int(11) default NULL,
  `lft` int(11) default NULL,
  `rgt` int(11) default NULL,
  `position` int(11) default NULL,
  `layout` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `permalink` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `date` date default NULL,
  `content` text,
  `active` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `permalink` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `category_id` int(11) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `permalink` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

CREATE TABLE `programs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `shipping_address` varchar(255) default NULL,
  `shipping_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `wedding_date` date default NULL,
  `brides_name` varchar(255) default NULL,
  `grooms_name` varchar(255) default NULL,
  `design_contact_number` varchar(255) default NULL,
  `design_name` varchar(255) default NULL,
  `quantity` int(11) default NULL,
  `ordered_sample` varchar(255) default NULL,
  `sample_number` varchar(255) default NULL,
  `text_paper` varchar(255) default NULL,
  `text_paper_layer_2` varchar(255) default NULL,
  `text_paper_layer_3` varchar(255) default NULL,
  `text_paper_layer_4` varchar(255) default NULL,
  `font_color` varchar(255) default NULL,
  `ribbon_color` varchar(255) default NULL,
  `special_requests` text,
  `program_text` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `save_dates` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `wedding_date` date default NULL,
  `sample_name` varchar(255) default NULL,
  `sample_name_2` varchar(255) default NULL,
  `sample_name_3` varchar(255) default NULL,
  `text_paper_1` varchar(255) default NULL,
  `text_paper_1_layer_1` varchar(255) default NULL,
  `text_paper_1_layer_2` varchar(255) default NULL,
  `text_paper_1_layer_3` varchar(255) default NULL,
  `text_paper_2` varchar(255) default NULL,
  `text_paper_2_layer_1` varchar(255) default NULL,
  `text_paper_2_layer_2` varchar(255) default NULL,
  `text_paper_2_layer_3` varchar(255) default NULL,
  `text_paper_3` varchar(255) default NULL,
  `text_paper_3_layer_1` varchar(255) default NULL,
  `text_paper_3_layer_2` varchar(255) default NULL,
  `text_paper_3_layer_3` varchar(255) default NULL,
  `font_color_1` varchar(255) default NULL,
  `font_color_2` varchar(255) default NULL,
  `font_color_3` varchar(255) default NULL,
  `ribbon_color_1` varchar(255) default NULL,
  `ribbon_color_2` varchar(255) default NULL,
  `ribbon_color_3` varchar(255) default NULL,
  `reply_card_styles` varchar(255) default NULL,
  `paper_sample_color_1` varchar(255) default NULL,
  `paper_sample_color_2` varchar(255) default NULL,
  `paper_sample_color_4` varchar(255) default NULL,
  `special_requests` text,
  `invitations_quantity` varchar(255) default NULL,
  `invitations_subtotal` varchar(255) default NULL,
  `save_the_dates_quantity` varchar(255) default NULL,
  `save_the_dates_subtotal` varchar(255) default NULL,
  `thank_you_cards_quantity` varchar(255) default NULL,
  `thank_you_cards_subtotal` varchar(255) default NULL,
  `programs_quantity` varchar(255) default NULL,
  `programs_subtotal` varchar(255) default NULL,
  `paper_samples_quantity` varchar(255) default NULL,
  `paper_samples_subtotal` varchar(255) default NULL,
  `paper_swatch_deck_quantity` varchar(255) default NULL,
  `paper_swatch_deck_subtotal` varchar(255) default NULL,
  `ribbon_swatch_deck` varchar(255) default NULL,
  `ribbon_swatch_deck_subtotal` varchar(255) default NULL,
  `subtotal` varchar(255) default NULL,
  `gst` varchar(255) default NULL,
  `total` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `thank_yous` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `shipping_address` varchar(255) default NULL,
  `shipping_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `wedding_date` date default NULL,
  `brides_name` varchar(255) default NULL,
  `grooms_name` varchar(255) default NULL,
  `design_contact_number` varchar(255) default NULL,
  `design_name` varchar(255) default NULL,
  `quantity` int(11) default NULL,
  `ordered_sample` varchar(255) default NULL,
  `sample_number` varchar(255) default NULL,
  `text_paper` varchar(255) default NULL,
  `text_paper_layer_2` varchar(255) default NULL,
  `text_paper_layer_3` varchar(255) default NULL,
  `text_paper_layer_4` varchar(255) default NULL,
  `font_color` varchar(255) default NULL,
  `ribbon_color` varchar(255) default NULL,
  `special_requests` text,
  `card_text` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) default NULL,
  `remember_token_expires_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wedding_samples` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `mailing_address` varchar(255) default NULL,
  `mailing_address_2` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `email_address` varchar(255) default NULL,
  `event_date` date default NULL,
  `sample_name_1` varchar(255) default NULL,
  `sample_name_2` varchar(255) default NULL,
  `sample_name_3` varchar(255) default NULL,
  `text_paper` varchar(255) default NULL,
  `text_paper_layer_1` varchar(255) default NULL,
  `text_paper_layer_2` varchar(255) default NULL,
  `text_paper_layer_3` varchar(255) default NULL,
  `text_paper_2` varchar(255) default NULL,
  `text_paper_2_layer_1` varchar(255) default NULL,
  `text_paper_2_layer_2` varchar(255) default NULL,
  `text_paper_2_layer_3` varchar(255) default NULL,
  `text_paper_3` varchar(255) default NULL,
  `text_paper_3_layer_1` varchar(255) default NULL,
  `text_paper_3_layer_2` varchar(255) default NULL,
  `text_paper_3_layer_3` varchar(255) default NULL,
  `font_color_1` varchar(255) default NULL,
  `font_color_2` varchar(255) default NULL,
  `font_color_3` varchar(255) default NULL,
  `ribbon_color_1` varchar(255) default NULL,
  `ribbon_color_2` varchar(255) default NULL,
  `ribbon_color_3` varchar(255) default NULL,
  `reply_card_style` varchar(255) default NULL,
  `paper_sample_color_1` varchar(255) default NULL,
  `paper_sample_color_2` varchar(255) default NULL,
  `paper_sample_color_3` varchar(255) default NULL,
  `paper_sample_color_4` varchar(255) default NULL,
  `special_requests` text,
  `invites_quantity` int(11) default NULL,
  `invites_quantity_cost` int(11) default NULL,
  `save_the_date_quantity` int(11) default NULL,
  `save_the_date_quantity_cost` int(11) default NULL,
  `thank_you_cards_quantity` int(11) default NULL,
  `thank_you_cards_quantity_cost` int(11) default NULL,
  `programs_quantity` int(11) default NULL,
  `programs_quantity_cost` int(11) default NULL,
  `paper_samples_quantity` int(11) default NULL,
  `paper_samples_quantity_cost` int(11) default NULL,
  `paper_swatch_deck_quantity` int(11) default NULL,
  `paper_swatch_deck_quantity_cost` int(11) default NULL,
  `ribbon_swatch_deck_quantity` int(11) default NULL,
  `ribbon_swatch_deck_quantity_cost` int(11) default NULL,
  `subtotal` int(11) default NULL,
  `gst` int(11) default NULL,
  `total` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO schema_migrations (version) VALUES ('20081205230930');

INSERT INTO schema_migrations (version) VALUES ('20081205231742');

INSERT INTO schema_migrations (version) VALUES ('20081205231901');

INSERT INTO schema_migrations (version) VALUES ('20081205233008');

INSERT INTO schema_migrations (version) VALUES ('20081205233146');

INSERT INTO schema_migrations (version) VALUES ('20081206001406');

INSERT INTO schema_migrations (version) VALUES ('20081206080740');

INSERT INTO schema_migrations (version) VALUES ('20081206080747');

INSERT INTO schema_migrations (version) VALUES ('20081206193057');

INSERT INTO schema_migrations (version) VALUES ('20081206201510');

INSERT INTO schema_migrations (version) VALUES ('20081207175251');

INSERT INTO schema_migrations (version) VALUES ('20081211050948');

INSERT INTO schema_migrations (version) VALUES ('20081212063713');

INSERT INTO schema_migrations (version) VALUES ('20081212235659');

INSERT INTO schema_migrations (version) VALUES ('20081213000319');

INSERT INTO schema_migrations (version) VALUES ('20081213000801');

INSERT INTO schema_migrations (version) VALUES ('20081213000925');

INSERT INTO schema_migrations (version) VALUES ('20081213001215');

INSERT INTO schema_migrations (version) VALUES ('20081214232729');

INSERT INTO schema_migrations (version) VALUES ('20081217053714');

INSERT INTO schema_migrations (version) VALUES ('20081219054043');

INSERT INTO schema_migrations (version) VALUES ('20081219060510');

INSERT INTO schema_migrations (version) VALUES ('20081219062212');

INSERT INTO schema_migrations (version) VALUES ('20081221003202');

INSERT INTO schema_migrations (version) VALUES ('20081221065958');

INSERT INTO schema_migrations (version) VALUES ('20081221070620');

INSERT INTO schema_migrations (version) VALUES ('20081227195650');