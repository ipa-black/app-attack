.class public Lcom/explorestack/iab/vast/VastRequest$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/VastErrorListener;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastErrorListener;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$e;->a:Lcom/explorestack/iab/vast/VastErrorListener;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$e;->b:Landroid/content/Context;

    iput p4, p0, Lcom/explorestack/iab/vast/VastRequest$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->b(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/CacheControl;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/CacheControl;->PartialLoad:Lcom/explorestack/iab/CacheControl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->c(Lcom/explorestack/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->d(Lcom/explorestack/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$e;->a:Lcom/explorestack/iab/vast/VastErrorListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$e;->a:Lcom/explorestack/iab/vast/VastErrorListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$e;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget v3, p0, Lcom/explorestack/iab/vast/VastRequest$e;->c:I

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastErrorListener;->onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method
