<?php
/**
 * @package WordPress
 * @subpackage Novatorix
 */
	// Do not delete these lines
	if (!empty($_SERVER['SCRIPT_FILENAME']) && 'comments.php' == basename($_SERVER['SCRIPT_FILENAME']))
		die ('Please do not load this page directly. Thanks!');

	if ( post_password_required() ) { ?>
		<p class="nocomments">این نوشته محافظت شده است، لطفا کلمه عبور را برای دیدن دیدگاه ها وارد کنید</p>
	<?php
		return;
	}
?>

<!-- You can start editing here. -->


<?php if ( have_comments() ) : ?>
	<h2><?php comments_number('نظر شما چیست؟', 'یک دیدگاه', '%دیدگاه' );?></h2>
						
	<div class="navigation">
		<div class="alignleft"><?php previous_comments_link() ?></div>
		<div class="alignright"><?php next_comments_link() ?></div>
	</div>

	<ol class="commentlist">
	<?php wp_list_comments('type=comment&callback=mytheme_comment'); ?>
	</ol>

	<div class="navigation">
		<div class="alignleft"><?php previous_comments_link() ?></div>
		<div class="alignright"><?php next_comments_link() ?></div>
	</div>
 <?php else : // this is displayed if there are no comments so far ?>

	<?php if ( comments_open() ) : ?>
		<!-- If comments are open, but there are no comments. -->

	 <?php else : // comments are closed ?>
		<!-- If comments are closed. -->
		<p class="nocomments">دیدگاه ها بسته است.</p>

	<?php endif; ?>
<?php endif; ?>


<?php if ( comments_open() ) : ?>

<div id="respond">

<h2>شما چی فکر می کنید؟</h2>

<div class="cancel-comment-reply">
	<small><?php cancel_comment_reply_link(); ?></small>
</div>

<?php if ( get_option('comment_registration') && !is_user_logged_in() ) : ?>
<p>برای ارسال دیدگاه شما باید <a href="<?php echo wp_login_url( get_permalink() ); ?>">وارد سیستم</a> شوید.</p>
<?php else : ?>

<form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">

<?php if ( is_user_logged_in() ) : ?>

<p>وارد شده با نام <a href="<?php echo get_option('siteurl'); ?>/wp-admin/profile.php"><?php echo $user_identity; ?></a>. <a href="<?php echo wp_logout_url(get_permalink()); ?>" title="Log out of this account">خروج &raquo;</a></p>

<?php else : ?>

<p><input type="text" name="author" id="author" value="<?php echo esc_attr($comment_author); 
if (!esc_attr($comment_author)){ 
	echo 'نام ';
	if ($req) echo "(الزامی)"; 
}?>" onclick="this.value=''" size="22" tabindex="1" <?php if ($req) echo "aria-required='true'"; ?> />
<label for="author"><small>نام <?php if ($req) echo "(required)"; ?></small></label></p>

<p><input type="text" name="email" id="email" value="<?php echo esc_attr($comment_author_email); 
if (!esc_attr($comment_author_email)){ 
	echo 'ایمیل ';
	if ($req) echo "(الزامی)"; 
}?>" onclick="this.value=''" size="22" tabindex="2" <?php if ($req) echo "aria-required='true'"; ?> />
<label for="email">ایمیل ( منتشر نخواهد شد) <?php if ($req) echo "(required)"; ?></small></label></p>


<p><input type="text" name="url" id="url" value="<?php echo esc_attr($comment_author_url); 
if (!esc_attr($comment_author_url)){ 
	echo 'وب سایت ';
}?>" onclick="this.value=''" size="22" tabindex="3" />
<label for="url2"><small>وب سایت</small></label></p>

<?php endif; ?>

<!--<p><small><strong>XHTML:</strong> You can use these tags: <code><?php echo allowed_tags(); ?></code></small></p>-->

<p><textarea name="comment" id="comment" cols="58" rows="10" tabindex="4" onclick="this.value=''"><?php 
	echo 'دیدگاه ';
?></textarea></p>

<p><input name="submit" type="submit" id="submit" tabindex="5" value="تایید و ارسال دیدگاه" />
<?php comment_id_fields(); ?>
</p>
<?php do_action('comment_form', $post->ID); ?>

</form>

<?php endif; // If registration required and not logged in ?>
</div>

<?php endif; // if you delete this the sky will fall on your head ?>