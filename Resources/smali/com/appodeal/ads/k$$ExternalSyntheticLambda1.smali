.class public final synthetic Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/l$a;

.field public final synthetic f$1:Lcom/appodeal/ads/r;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;->f$0:Lcom/appodeal/ads/l$a;

    iput-object p2, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;->f$1:Lcom/appodeal/ads/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;->f$0:Lcom/appodeal/ads/l$a;

    iget-object v1, p0, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;->f$1:Lcom/appodeal/ads/r;

    invoke-static {v0, v1}, Lcom/appodeal/ads/k;->a(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V

    return-void
.end method
