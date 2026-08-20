.class public Lcom/explorestack/iab/vast/VastRequest$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/VastRequestListener;

.field public final synthetic b:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$d;->b:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$d;->a:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$d;->a:Lcom/explorestack/iab/vast/VastRequestListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$d;->b:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/VastRequestListener;->onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method
