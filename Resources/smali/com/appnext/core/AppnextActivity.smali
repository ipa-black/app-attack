.class public abstract Lcom/appnext/core/AppnextActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field protected banner:Ljava/lang/String;

.field protected gj:Ljava/lang/String;

.field private gk:Landroid/widget/RelativeLayout;

.field protected gl:Landroid/widget/RelativeLayout;

.field protected guid:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field protected placementID:Ljava/lang/String;

.field protected userAction:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->gj:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->guid:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->banner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->ba()V

    .line 144
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    .line 145
    const-string v1, "#77ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    new-instance p1, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010077

    invoke-direct {p1, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 158
    iget-object p2, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x3e8

    .line 160
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 163
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/appnext/core/AppnextActivity$2;

    invoke-direct {p2, p0}, Lcom/appnext/core/AppnextActivity$2;-><init>(Lcom/appnext/core/AppnextActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/appnext/core/AppnextActivity$3;

    invoke-direct {p2, p0}, Lcom/appnext/core/AppnextActivity$3;-><init>(Lcom/appnext/core/AppnextActivity;)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    :cond_0
    return-void
.end method

.method protected final aY()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    xor-int/lit16 v0, v0, 0x1006

    .line 98
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected final aZ()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1006

    .line 127
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/AppnextActivity;->placementID:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    :cond_0
    return-void
.end method

.method protected final ba()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    .line 184
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    :cond_1
    iput-object v1, p0, Lcom/appnext/core/AppnextActivity;->gk:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected abstract getConfig()Lcom/appnext/core/p;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/AppnextActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/AppnextActivity$1;-><init>(Lcom/appnext/core/AppnextActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/appnext/core/AppnextActivity;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 65
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v1}, Lcom/appnext/core/q;->destroy()V

    .line 205
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method protected abstract onError(Ljava/lang/String;)V
.end method
