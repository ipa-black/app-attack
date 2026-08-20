.class Lcom/appodeal/ads/api/Stats$AdUnitRequestResult$1;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
    .locals 0

    .line 257
    invoke-static {p1}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->forNumber(I)Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult$1;->findValueByNumber(I)Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    move-result-object p1

    return-object p1
.end method
