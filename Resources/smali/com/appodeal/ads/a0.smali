.class public final Lcom/appodeal/ads/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/r;

.field public final synthetic b:Lcom/appodeal/ads/l;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/appodeal/ads/b0;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a0;->d:Lcom/appodeal/ads/b0;

    iput-object p2, p0, Lcom/appodeal/ads/a0;->a:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/a0;->b:Lcom/appodeal/ads/l;

    iput-object p4, p0, Lcom/appodeal/ads/a0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/a0;->d:Lcom/appodeal/ads/b0;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/a0;->a:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/a0;->b:Lcom/appodeal/ads/l;

    iget-object v3, p0, Lcom/appodeal/ads/a0;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/g;->c(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Object;)V

    return-void
.end method
