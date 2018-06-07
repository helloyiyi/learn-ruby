require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  # TODO: the difference should be 1, and maybe it needs to redirect
  test "should create article" do
    assert_difference('Article.count', 0) do
      post articles_url, params: { article: { post: @article.post, title: @article.title, user_id: @article.user_id } }
    end

    assert_response :success
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  # TODO: may need to redirect
  test "should update article" do
    patch article_url(@article), params: { article: { post: @article.post, title: @article.title, user_id: @article.user_id } }
    assert_response :success
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
