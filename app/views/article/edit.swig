{% extends '../layout.swig' %}

{% block content %}
<ol class="breadcrumb">
    <li><a href="/">Home</a></li>
    <li><a href="/articles">Articles</a></li>
    <li class="active">Edit</li>
</ol>

<div class="col-lg-8">
    <div class="well bs-component">
        <form class="form-horizontal" action="" method="POST">
        <fieldset>
          <div class="form-group">
            <label for="title" class="col-lg-2 control-label">Title:</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="title" name="title" value="{{ article.title }}">
            </div>
          </div>

          <div class="form-group">
            <label for="content" class="col-lg-2 control-label">內文:</label>
            <div class="col-lg-10">
                <textarea class="form-control" data-provide="markdown-editable" name="content" id="content" class="myEditor" cols="30" rows="10">{{ article.content }}</textarea>
            </div>
          </div>

          <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
              <button class="btn btn-default">Cancel</button>
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </fieldset>
        </form>
        <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>
    </div>
</div>

{% endblock %}


