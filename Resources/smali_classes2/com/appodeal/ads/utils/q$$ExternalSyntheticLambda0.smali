.class public final synthetic Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/utils/q$b;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/utils/q$b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/utils/q$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/utils/q$b;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/q$b;->onHandled()V

    return-void
.end method
