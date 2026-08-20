.class public Lcom/appodeal/ads/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/VideoPlayerActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:I

.field public b:Landroid/widget/VideoView;

.field public c:Lcom/appodeal/ads/VideoPlayerActivity$a;


# direct methods
.method public static synthetic $r8$lambda$MXPd0-kRGiq37v-HFReuo-XeBSY(Lcom/appodeal/ads/VideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/VideoPlayerActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YmP_TnBN1jlk1We83zmQjUVv9oA(Lcom/appodeal/ads/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    check-cast v1, Lcom/appodeal/ads/g2;

    invoke-virtual {v1, p1, v0}, Lcom/appodeal/ads/g2;->a(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/VideoPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/VideoPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/VideoPlayerActivity;)V

    .line 1
    sget-object v1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    check-cast v2, Lcom/appodeal/ads/g2;

    invoke-virtual {v2, v0, v1}, Lcom/appodeal/ads/g2;->a(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/appodeal/ads/g2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/g2;->a(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.appodeal.ads.fileUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.appodeal.ads.seekTo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "position: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoPlayerActivity"

    const-string v2, "Start"

    invoke-static {v1, v2, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/appodeal/ads/g2;->y:Lcom/appodeal/ads/g2;

    iput-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    sget v3, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-virtual {v0, v1, v3}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setColors(II)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p0, v1}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="

    invoke-static {v1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/appodeal/ads/VideoPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/VideoPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    iget v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
