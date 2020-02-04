$(function() {
  let search_list = $(".card");

  function appendPost(post) {
    let current_user = ""
    let html = `<div class="card__contant">
                <div class="card__contant-title">
                ${post.title}
                </div>
                <div class="card__contant-main">
                <div class="card__contant-main-image">
                <img class="post_photo" src=${post.image}>
                </div>
                <div class="card__contant-main-description">
                ${post.description}
                </div>
                <a href="/users/${post.user_id}">${post.name}</a>
                </div>
                </div>`
    search_list.append(html);
  }
  function appendErrMsgToHTML(msg) {
    let html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }


  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/posts/searches',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(posts) {
      console.log(posts.image)
      search_list.empty();
      if (posts.length !== 0) {
        posts.forEach(function(post){
          appendPost(post);
        });
      } else {
        appendErrMsgToHTML("一致する投稿がありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});