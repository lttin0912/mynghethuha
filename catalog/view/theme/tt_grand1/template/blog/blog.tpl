<?php echo $header; ?><div class="breadcrumbs">        <div class="container">            <ul class="breadcrumb clearfix">                <?php foreach ($breadcrumbs as $breadcrumb) { ?>                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>                <?php } ?>            </ul>        </div>    </div>  <div class="container">        <div class="main">  <div class="row"><?php echo $column_left; ?>    <?php if ($column_left && $column_right) { ?>    <?php $class = 'col-sm-6'; ?>    <?php } elseif ($column_left || $column_right) { ?>    <?php $class = 'col-sm-9 col-xs-12'; ?>    <?php } else { ?>    <?php $class = 'col-sm-12'; ?>    <?php } ?>    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>      <!-- <div class="page-title article-titles"><h2><?php echo $heading_title; ?></h2></div> -->      <?php if ($articles) { ?>      <div class="article-page">      <div class="product-filter">        <div class="limit">      <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>      <select id="input-limit" class="form-control" onchange="location = this.value;">      <?php foreach ($limits as $limits) { ?>      <?php if ($limits['value'] == $limit) { ?>      <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>      <?php } else { ?>      <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>      <?php } ?>      <?php } ?>      </select>    </div>    </div>        <?php $i=0; foreach ($articles as $article) { $i++; ?>        <div class="article-layout article-list">          <div class="article-item <?php echo ($i%2==0) ? 'even' : 'odd'; ?>">                <div class="article-item-inner">                <div class="row">                <div class="col-md-5 col-xs-6 col-sm-12">                   <div class="intro-content"><img src="<?php echo $article['image']; ?>" alt="#"/></div>                </div>                <div class="col-md-7 col-xs-6 col-sm-12">                  <div class="article-intro">                    <div class="article-name"><h3><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h3></div>                    <p class="articledate"><?php echo $article['date_added']; ?><?php if($article['author'] != null && $article['author'] != ""): ?>          <?php echo " | ".$article['author']; ?>         <?php endif; ?></p>                    <?php echo $article['intro_text']; ?>                                     </div>                  <a class="readmore-page" href="<?php echo $article['href']; ?>"><?php echo $button_read_more; ?></a>               </div>                </div>              </div>              </div>        </div>        <?php } ?>              </div>      <div class="product-pagination">  <div class="col-sm-6 col-xs-6 text-left"><?php echo $pagination; ?></div>  <div class="col-sm-6 col-xs-6 text-right"> <div class="product-results"><?php echo $results; ?></div></div>  </div>      <?php } ?>      <?php if (!$articles) { ?>      <p><?php echo $text_empty; ?></p>      <?php } ?>      <?php echo $content_bottom; ?></div>    <?php echo $column_right; ?></div></div></div><?php echo $footer; ?>