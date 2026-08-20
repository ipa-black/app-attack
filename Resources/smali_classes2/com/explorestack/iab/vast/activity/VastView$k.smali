.class public Lcom/explorestack/iab/vast/activity/VastView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$k;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$k;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$k;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$k;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_1
    return-void
.end method
