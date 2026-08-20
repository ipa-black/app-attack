.class public final synthetic Lio/bidmachine/ads/networks/notsy/NotsyLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    check-cast p2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    invoke-static {p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->lambda$setup$0(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)I

    move-result p1

    return p1
.end method
