.class public final Lcom/appodeal/ads/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    .line 1
    invoke-virtual {p1}, Lcom/appodeal/ads/g2;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    .line 3
    iget-boolean v0, p1, Lcom/appodeal/ads/g2;->l:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    const/4 v0, 0x1

    .line 6
    :goto_0
    iput-boolean v0, p1, Lcom/appodeal/ads/g2;->l:Z

    .line 8
    iget-object p1, p0, Lcom/appodeal/ads/e2;->a:Lcom/appodeal/ads/g2;

    .line 9
    invoke-virtual {p1}, Lcom/appodeal/ads/g2;->g()V

    :cond_1
    return-void
.end method
