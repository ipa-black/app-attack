.class public final synthetic Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/adapters/bidmachine/b;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/appodeal/ads/networking/LoadingError;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/adapters/bidmachine/b;Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$0:Lcom/appodeal/ads/adapters/bidmachine/b;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$2:Lcom/appodeal/ads/networking/LoadingError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$0:Lcom/appodeal/ads/adapters/bidmachine/b;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;->f$2:Lcom/appodeal/ads/networking/LoadingError;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/adapters/bidmachine/b;->$r8$lambda$o28tfmJsfSfH-8HiIWO7HXUcBDs(Lcom/appodeal/ads/adapters/bidmachine/b;Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
