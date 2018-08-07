<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<nav class="navbar navbar-default navbar-fixed-top{$NAVBAR_INVERSE}" style="background-color: #272727; box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24); border-radius: 0px; border-bottom: 8px solid #161616">
<div class="container">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navbar_collapse">
	  <span class="sr-only">Toggle navigation</span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" style="color: #3383FF; font-size: 15px; padding-top: 25px; font-family: 'Raleway'"><i class="fa fa-star" aria-hidden="true"></i> IP: PLAY.WARHUT.US <i class="fa fa-star" aria-hidden="true"></i></a>
  </div>
  <div class="collapse navbar-collapse" id="main_navbar_collapse">
	<ul class="nav navbar-nav navbar-right" style="font-family: 'Raleway'">
	  {* User dropdown and notifications *}
	  {$USER_AREA}
	</ul>
  </div><!-- /.navbar-collapse -->
</div><!-- /.container -->
</nav>

<div style="background-image: URL(http://www.tokkoro.com/picsup/2832503-minecraft-video-games-westeroscraft-house-lannister-a-song-of-ice-and-fire-render___game-wallpapers.jpg); padding: 2%;">
  <div class="container">
        <h1 style="color: white; font-family: 'Raleway'; font-size: 50px;">{$SITE_NAME}</h1>
  </div>
</div>


<nav class="navbar navbar-default" style="background-color: #0ea9e6; margin-top: -10px; border-radius: 0px; box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">
<div class="container">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navbar_collapse">
	  <span class="sr-only">Toggle navigation</span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	</button>
  </div>
  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="main_navbar_collapse" style="font-family: 'Raleway'">
	{$NAVBAR_LINKS}
  </div><!-- /.navbar-collapse -->
</div><!-- /.container -->
</nav>




<br />

{if isset($GLOBAL_MESSAGES) && !empty($GLOBAL_MESSAGES)}
<div class="container">
  {$GLOBAL_MESSAGES}
</div>
{/if}

{if isset($ANNOUNCEMENTS) && !empty($ANNOUNCEMENTS)}
  <div class="container">
  {foreach from=$ANNOUNCEMENTS item=item}
    <div class="alert alert-{$item.type}{if $item.can_close == 1} alert-announcement-{$item.id} alert-dismissible{/if}" id="{$item.id}">
	  {if $item.can_close == 1}<button type="button" class="close close-announcement" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>{/if}
	  {$item.content}
	</div>
  {/foreach}
  </div>
{/if}
