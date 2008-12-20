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
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `invites` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `collection_id` int(11) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `occasion_order_forms` (
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

CREATE TABLE `other_sample_orders` (
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

CREATE TABLE `program_order_forms` (
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

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `thank_you_order_forms` (
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

CREATE TABLE `wedding_sample_orders` (
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