.class public final Lcom/appodeal/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/r;

.field public final synthetic b:Lcom/appodeal/ads/l;

.field public final synthetic c:Lcom/appodeal/ads/b0;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/w;->c:Lcom/appodeal/ads/b0;

    iput-object p2, p0, Lcom/appodeal/ads/w;->a:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/w;->b:Lcom/appodeal/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/w;->c:Lcom/appodeal/ads/b0;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/b0;->b:Lcom/appodeal/ads/g;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/w;->a:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/w;->b:Lcom/appodeal/ads/l;

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/g;->d(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void
.end method
