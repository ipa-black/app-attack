.class public Lcom/explorestack/iab/vast/activity/VastView$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$q;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView$q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$q;->b:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->j(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$q;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iget-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView$q;->a:Z

    invoke-static {v0, p1, p2, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;Z)V

    return-void
.end method
