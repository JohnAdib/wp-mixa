<?php
/**
 * @package WordPress
 * @subpackage Novatorix
*/

get_header(); ?>
			
			<div id="content">
				
				<?php if (have_posts()) : ?>
				<!--h1>Search Results:</h1-->
				<?php while (have_posts()) : the_post(); ?>
								
				<div class="entry" id="post-<?php the_ID(); ?>">
					<h1><a href="<?php the_permalink() ?>" rel="bookmark" title="لینک مستقیم به <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>
					<p class="meta"><?php the_author_posts_link() ?> | <a href="<?php echo get_month_link($get_year, $get_month); ?>"><?php the_time('F jS, Y') ?></a> | <?php the_category(', ') ?></p>
					
					<div class="entry-content">
						<p><?php the_post_thumbnail('wide'); ?></p>
						<?php the_excerpt('Read the rest of this entry &raquo;'); ?>
						<p><?php comments_popup_link('با نظر خود شروع کننده باشید', 'یک دیدگاه', '% دیدگاه'); ?> | <a href="<?php the_permalink() ?>">بازم بخونید</a></p>
					</div><!-- e: entry content -->
				</div><!-- e: entry -->
		
				<?php endwhile; ?>

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