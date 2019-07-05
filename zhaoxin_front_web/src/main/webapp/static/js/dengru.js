$(function() {
  $('#doc-vld-ajax').validator({
    validate: function(validity) {
      var v = $(validity.field).val();

      var comparer = function(v1, v2) {
        if (v1 != v2) {
          validity.valid = false;
        }

        // 这些属性目前 v2.3 以前没什么用，如果不想写可以忽略
        // 从 v2.3 开始，这些属性被 getValidationMessage() 用于生成错误提示信息
        if (v2 < 10) {
          validity.rangeUnderflow = true;
        } else if(v2 > 10) {
          validity.rangeOverflow = true;
        }
      };

      // Ajax 验证
      if ($(validity.field).is('.js-ajax-validate')) {
        // 异步操作必须返回 Deferred 对象
        return $.ajax({
          url: 'http://s.amazeui.org/media/i/demos/validate.json',
          // cache: false, 实际使用中请禁用缓存
          dataType: 'json'
        }).then(function(data) {
          comparer(data.count, v);
          return validity;
        }, function() {
          return validity;
        });
      }

      // 本地验证，同步操作，无需返回值
      if ($(validity.field).is('.js-sync-validate')) {
        comparer(10, v);
        // return validity;
      }
    }
  });
});