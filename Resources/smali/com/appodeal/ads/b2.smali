.class public final Lcom/appodeal/ads/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    iget-object p1, p1, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    const-string v0, "Video"

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "click url is absent"

    invoke-static {p1, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v2, "clicked"

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    sput-object v0, Lcom/appodeal/ads/g2;->y:Lcom/appodeal/ads/g2;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/appodeal/ads/g2;->s:Z

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    .line 6
    iget-object v0, v0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    .line 8
    iget-object v0, v0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    .line 10
    invoke-virtual {v1}, Lcom/appodeal/ads/g2;->d()V

    .line 11
    iget-object v1, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/appodeal/ads/VideoPlayerActivity;->d:I

    .line 12
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appodeal/ads/VideoPlayerActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.appodeal.ads.fileUri"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.appodeal.ads.seekTo"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lcom/appodeal/ads/b2;->a:Lcom/appodeal/ads/g2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
