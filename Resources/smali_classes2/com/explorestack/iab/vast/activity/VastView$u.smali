.class public Lcom/explorestack/iab/vast/activity/VastView$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->isR1()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->y(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->A(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->B(Lcom/explorestack/iab/vast/activity/VastView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$u;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->handleBackPress()V

    :goto_0
    return-void
.end method
