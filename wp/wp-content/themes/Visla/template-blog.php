<?php
/*
Template Name: Blog Template
*/
get_header();
?>			
			<div id="content">
				
				<?php 
					//get exclusions for categories
					$exclude = get_option($shortname.'_exclude_categories');				
					$exclude = str_replace(',,','|-',$exclude);
					$exclude = str_replace(',','-',$exclude);
					$exclude = substr($exclude, 0, -1);
					$exclude = str_replace('|',',',$exclude);
					
					query_posts('posts_per_page=&paged='.$paged.'&cat='.$exclude); 
					if(have_posts()) : while(have_posts()) : the_post(); 
				?>		
				
				<div class="entry" id="post-<?php the_ID(); ?>">
					<h1><a href="<?php the_permalink() ?>" rel="bookmark" title="لینک مستقیم به <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>
					<p class="meta"><?php the_author_posts_link() ?> | <a href="<?php echo get_month_link($get_year, $get_month); ?>"><?php the_time('F jS, Y') ?></a> | <?php the_category(', ') ?></p>
					
					<div class="entry-content">
						<p><?php the_post_thumbnail('wide'); ?></p>
						<?php the_excerpt('Read the rest of this entry &raquo;'); ?>
						<p><?php comments_popup_link('با نظر خود شروع کننده باشید', 'یک دیدگاه', '% دیدگاه'); ?>  | <a href="<?php the_permalink() ?>" title="<?php the_title(); ?>">لینک مستقیم</a></p>
					</div><!-- e: entry content -->
				</div><!-- e: entry -->
				
				<?php 
					endwhile; 
					//endif;
				?>

				<div class="paginate">
					<?php if(function_exists('wp_pagenavi')) { wp_pagenavi(); } ?>   
				</div>

				<?php else : ?>

				<h2 class="center">یافت نشد</h2>
				<p class="center">متاسفیم، ولی چیزی که دنبالش هستید، این ورا پیدا نمیشه!</p>
				<?php get_search_form(); ?>

				<?php endif; ?>
				
			</div><!-- e: content -->
			
<?php get_sidebar(); ?>

<?php get_footer(); ?>