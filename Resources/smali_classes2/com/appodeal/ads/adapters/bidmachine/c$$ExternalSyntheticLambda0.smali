.class public final synthetic Lcom/appodeal/ads/adapters/bidmachine/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/explorestack/iab/utils/LogListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/c$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLog(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/c$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Ljava/lang/String;Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
