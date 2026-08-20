.class public Lcom/explorestack/iab/vast/VastRequest$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$h;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$h;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->e(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$h;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->e(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/d;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$h;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/d;->a(Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    return-void
.end method
