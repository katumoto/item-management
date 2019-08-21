// ⬇︎ %div.item-list内の各div要素の高さに変動があった場合、並列のこそ要素の高さを合わせる
jQuery(window).load(function() { 
  $('.item-list').each(function(i, box) {
      var maxHeight = 0;
      $(box).find('.list').each(function() {
          if ($(this).height() > maxHeight) maxHeight = $(this).height();
      });
      $(box).find('.list').height(maxHeight);
  });
});
