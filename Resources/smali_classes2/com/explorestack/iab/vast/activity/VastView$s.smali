.class public Lcom/explorestack/iab/vast/activity/VastView$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/view/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/a;)V
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

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$s;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$s;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->j(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$s;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v2, v2, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public onCountDownFinish()V
    .locals 0

    return-void
.end method
