<?php
/**
 * @package WordPress
 * @subpackage Novatorix
 * Template Name: 404 error page
*/

get_header(); ?>
			
			<div id="content">
				
				<div class="entry" id="post-<?php the_ID(); ?>">
					<h1>خطای 404 - متاسفیم، نیافتیم!</h1>

					<h2>دسته بندی ها</h2>
					<ul><?php wp_list_cats('sort_column=name&optioncount=1&hierarchical=0&feed=RSS'); ?></ul>
					<div id="sitemap-caption"><p><a href="#">بالا</a></p></div>
					
					<h2>تمام نوشته های وب سایت</h2>
						<ul><?php $query = new WP_Query('showposts=1000');
							while ($query->have_posts()) : $query->the_post(); ?>
								<li>
									<a href="<?php the_permalink() ?>" rel="bookmark" title="لینک مستقیم به <?php the_title(); ?>"><?php the_title(); ?></a> (<?php comments_number('0', '1', '%'); ?> دیدگاه)
								</li>
							<?php endwhile; ?>
						</ul>
						<div id="sitemap-caption"><p><a href="#">Top</a></p></div>

					<h2>آرشیو</h2>
						<ul class="arrow_list">
							<?php wp_get_archives('type=monthly&show_post_count=true'); ?>
						</ul>
										
					</div><!-- e: entry -->			
			</div><!-- e: content -->
			
<?php get_sidebar(); ?>

<?php get_footer(); ?>