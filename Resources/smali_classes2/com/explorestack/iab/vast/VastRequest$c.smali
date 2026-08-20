.class public Lcom/explorestack/iab/vast/VastRequest$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->performCache(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/explorestack/iab/vast/VastRequestListener;

.field public final synthetic c:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$c;->c:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$c;->b:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$c;->c:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v2

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest$c;->b:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Lcom/explorestack/iab/vast/processor/VastAd;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method
