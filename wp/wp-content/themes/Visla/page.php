<?php
/**
 * @package WordPress
 * @subpackage Novatorix
*/

get_header(); 
?>
			<div id="content">
				
				<?php if (have_posts()) : ?>
				<?php while (have_posts()) : the_post(); ?>
				
				
				<div class="entry" id="post-<?php the_ID(); ?>">
					<!--h1><?php the_title(); ?></h1-->
					
					<div class="entry-content">
						<?php the_content('Read the rest of this entry &raquo;'); ?>
					</div><!-- e: entry content -->
					
				</div><!-- e: entry -->	
		
				<?php endwhile; ?>

				<?php else : ?>

				<h2 class="center">یافت نشد</h2>
				<p class="center">متاسفیم، ولی چیزی که دنبالش هستید، این ورا پیدا نمیشه!</p>
				<?php get_search_form(); ?>

				<?php endif; ?>				
				
			</div><!-- e: content -->

<?php get_sidebar(); ?>

<?php get_footer(); ?>