.class public Lcom/explorestack/iab/view/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/view/a$b;,
        Lcom/explorestack/iab/view/a$c;,
        Lcom/explorestack/iab/view/a$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/explorestack/iab/view/a$c;

.field public b:Lcom/explorestack/iab/utils/d;

.field public c:Lcom/explorestack/iab/utils/e;

.field public d:Lcom/explorestack/iab/view/a$b;

.field public e:Lcom/explorestack/iab/view/a$d;

.field public f:Lcom/explorestack/iab/utils/IabElementStyle;

.field public g:Lcom/explorestack/iab/utils/IabElementStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/explorestack/iab/view/a$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/explorestack/iab/view/a$c;-><init>(Lcom/explorestack/iab/view/a$a;)V

    iput-object p1, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/view/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$d;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/view/a;->e:Lcom/explorestack/iab/view/a$d;

    return-object p0
.end method

.method public static synthetic c(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    return-object p0
.end method

.method public static synthetic d(Lcom/explorestack/iab/view/a;)Lcom/explorestack/iab/view/a$c;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->b()V

    new-instance v0, Lcom/explorestack/iab/view/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/iab/view/a$b;-><init>(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/view/a$a;)V

    iput-object v0, p0, Lcom/explorestack/iab/view/a;->d:Lcom/explorestack/iab/view/a$b;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->a()V

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->d:Lcom/explorestack/iab/view/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/view/a;->d:Lcom/explorestack/iab/view/a$b;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/explorestack/iab/utils/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/e;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/view/a;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->b()V

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/explorestack/iab/utils/d;

    new-instance v1, Lcom/explorestack/iab/view/a$a;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/view/a$a;-><init>(Lcom/explorestack/iab/view/a;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/d;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/view/a;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public canBeClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a$c;->a()Z

    move-result v0

    return v0
.end method

.method public getOnScreenTimeMs()J
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a$c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a$c;->d()Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {p1}, Lcom/explorestack/iab/view/a$c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {p1}, Lcom/explorestack/iab/view/a$c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->a()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lcom/explorestack/iab/view/a$c;->a(Lcom/explorestack/iab/view/a$c;Z)V

    return-void
.end method

.method public setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/view/a;->e:Lcom/explorestack/iab/view/a$d;

    return-void
.end method

.method public setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 2

    iput-object p1, p0, Lcom/explorestack/iab/view/a;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_0
    return-void
.end method

.method public setCloseVisibility(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-static {v0}, Lcom/explorestack/iab/view/a$c;->a(Lcom/explorestack/iab/view/a$c;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-static {v0}, Lcom/explorestack/iab/view/a$c;->b(Lcom/explorestack/iab/view/a$c;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/view/a;->a:Lcom/explorestack/iab/view/a$c;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/iab/view/a$c;->a(ZF)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/explorestack/iab/view/a;->b:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->b()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->c()V

    return-void
.end method

.method public setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 2

    iput-object p1, p0, Lcom/explorestack/iab/view/a;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/view/a;->c:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_0
    return-void
.end method
