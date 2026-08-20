.class public final synthetic Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/l$a;

.field public final synthetic f$1:Lcom/appodeal/ads/r;

.field public final synthetic f$2:Lcom/appodeal/ads/networking/LoadingError;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/l$a;

    iput-object p2, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$1:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$2:Lcom/appodeal/ads/networking/LoadingError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/l$a;

    iget-object v1, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$1:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;->f$2:Lcom/appodeal/ads/networking/LoadingError;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/k;->a(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
