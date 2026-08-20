.class public Lcom/explorestack/iab/vast/activity/VastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastActivity;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1, p2, p3}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method

.method public onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1, p2, p3}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public onOrientationRequested(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/VastRequest;->getForceOrientation()I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    move p3, p1

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1, p3}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;I)V

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {p1, v0, p2}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    return-void
.end method
