.class Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;
.super Landroid/webkit/WebViewClient;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/FullScreenBanner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 187
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$102(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 188
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->close()V

    return v0

    .line 192
    :cond_0
    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/EndpointGetter;->getUrlWithoutArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$700(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsgeyser/sdk/utils/EndpointGetter;->getUrlWithoutArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$800(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/BannerUtils;->isDataTextHtmlUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$902(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result v2

    const/high16 v3, 0x10000000

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v4}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const-string v4, "browser_url"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1200(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "uniqid"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string p2, "banner_type"

    const-string v4, "banner_type_fullscreen"

    invoke-virtual {v2, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1300(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)J

    move-result-wide v4

    const-string p2, "timer_duration"

    invoke-virtual {v2, p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p2

    const-string v4, "click_redirect_start"

    iget-object v5, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    .line 210
    invoke-virtual {p2, v4, v0, v5, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p2

    const-string v4, "click_external_browser"

    iget-object v5, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    .line 214
    invoke-virtual {p2, v4, v0, v5, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 216
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->close()V

    .line 218
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 221
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$1400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendClickInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    const-string p1, "fullscreen_clicked"

    invoke-static {p1}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 114
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$200(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 117
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object p1

    sget-object p2, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    sget-object p2, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->HTML:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$402(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 119
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    move-result-object p1

    sget-object p2, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->close()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$202(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 129
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/BannerUtils;->isDataTextHtmlUrl(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 106
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    const-string p2, "click_data_text_html_loaded_in_banner"

    .line 107
    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    const-string p1, "https://splash.appsgeyser.com/"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 146
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    goto :goto_0

    .line 148
    :cond_0
    const-string p1, "img"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "css"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p3}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 152
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    .line 159
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 165
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "https://splash.appsgeyser.com/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p3}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 169
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "css"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->val$context:Landroid/content/Context;

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p3}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdFailedToLoad(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1, p3}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    .line 175
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadFinished(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    .line 182
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->this$0:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;->handleRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
