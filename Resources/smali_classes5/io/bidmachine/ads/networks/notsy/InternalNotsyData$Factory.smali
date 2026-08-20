.class Lio/bidmachine/ads/networks/notsy/InternalNotsyData$Factory;
.super Ljava/lang/Object;
.source "InternalNotsyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
    .locals 1

    .line 95
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    .line 96
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 97
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;-><init>(Ljava/lang/String;FF)V

    return-object v0
.end method

.method static create(Ljava/util/Map;)Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 69
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "ad_unit_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 78
    :cond_1
    const-string v2, "score"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 83
    :cond_2
    const-string v3, "price"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 89
    :cond_3
    invoke-static {v1, v2, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData$Factory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method
