<?php if (count($currencies) > 1) { ?>
<div class="top-currency">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
    <span><?php echo $currency['symbol_left']; ?></span>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
    <span><?php echo $currency['symbol_right']; ?></span>
    <?php } ?>
    <?php } ?>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
    <span class=""><?php echo $currency['code']; ?></span>
    <?php } ?>
    <?php } ?>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> <?php echo $currency['code']; ?></button></li>
      <?php } else { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> <?php echo $currency['code']; ?></button></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>